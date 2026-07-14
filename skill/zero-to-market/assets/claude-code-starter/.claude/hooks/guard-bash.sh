#!/usr/bin/env bash
# .claude/hooks/guard-bash.sh — hook PreToolUse (matcher: Bash)
#
# Blocca a livello di runtime ciò che il CLAUDE.md può solo "chiedere":
#  - processi persistenti avviati in locale (vanno deployati su server)
#  - operazioni distruttive su DB e git
#  - lettura/stampa di segreti
# exit 2 = tool call bloccata, il motivo su stderr torna a Claude.

set -uo pipefail
# shellcheck source=/dev/null
. "$(dirname "$0")/_json.sh"

INPUT="$(cat)"
CMD="$(json_get "$INPUT" '.tool_input.command')"

# Se non riusciamo a leggere il comando, NON disattiviamo la guardia in silenzio.
if [ -z "$CMD" ]; then
  if ! printf '%s' "$INPUT" | grep -q '"command"'; then
    exit 0   # non e' una Bash tool call
  fi
  echo "guard-bash: impossibile leggere il comando dal payload dell'hook (manca jq, node e python3). Installa jq per riattivare le protezioni." >&2
  exit 2
fi

block() {
  echo "BLOCCATO dall'hook guard-bash: $1" >&2
  echo "Comando: $CMD" >&2
  exit 2
}

# --- Processi persistenti in locale --------------------------------------
case "$CMD" in
  *"nohup "*|*"pm2 start"*|*"crontab "*|*"launchctl load"*|*"systemctl enable"*)
    block "avvio di un processo persistente in locale. I job long-running, i cron, i listener e i webhook vanno deployati sul server (Docker con restart: always), non sulla macchina di sviluppo." ;;
  *"docker compose up -d"*|*"docker-compose up -d"*)
    block "servizio in background sulla macchina locale. Se deve restare attivo oltre la sessione, va sul server. Se serve solo per i test, usa 'docker compose up' in foreground o un container usa-e-getta." ;;
esac

# --- Distruttivo su DB ----------------------------------------------------
case "$CMD" in
  *"DROP TABLE"*|*"DROP DATABASE"*|*"TRUNCATE "*|*"db reset"*|*"db:drop"*)
    block "operazione distruttiva sul database. Richiede approvazione umana esplicita." ;;
esac

# --- Distruttivo su git ---------------------------------------------------
case "$CMD" in
  *"push --force"*|*"push -f "*|*"reset --hard"*|*"clean -fdx"*|*"branch -D "*)
    block "operazione git irreversibile. Chiedi conferma all'utente prima di procedere." ;;
esac

# --- Segreti --------------------------------------------------------------
case "$CMD" in
  *"cat .env"*|*"cat "*".env"*|*"printenv"*|*"env |"*|*"echo \$"*"_KEY"*|*"echo \$"*"_SECRET"*|*"echo \$"*"_TOKEN"*)
    block "il comando leggerebbe o stamperebbe dei segreti. Tutto ciò che passa da un tool finisce nel transcript in chiaro su disco. Usa le variabili d'ambiente senza stamparle." ;;
esac

exit 0
