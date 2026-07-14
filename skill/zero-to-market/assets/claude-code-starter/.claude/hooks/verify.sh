#!/usr/bin/env bash
# .claude/hooks/verify.sh — hook Stop
#
# Impedisce a Claude di chiudere il turno dicendo "fatto" senza aver verificato.
# Se lint / typecheck / test falliscono, esce con codice 2: il turno NON si chiude
# e l'output su stderr torna a Claude, che deve correggere e riprovare.
#
# Anti-loop: se il turno è già stato bloccato da questo hook (stop_hook_active),
# non blocca una seconda volta di fila — evita cicli infiniti su errori non risolvibili.

set -uo pipefail
cd "${CLAUDE_PROJECT_DIR:-$(pwd)}" || exit 0

# shellcheck source=/dev/null
. "$(dirname "$0")/_json.sh"

INPUT="$(cat)"

# 1. Anti-loop: se questo hook ha gia' bloccato il turno, non bloccare due volte di fila
ACTIVE="$(json_get "$INPUT" '.stop_hook_active')"
[ "$ACTIVE" = "true" ] && exit 0

# 2. Se non c'è nulla di modificato, non c'è nulla da verificare
if command -v git >/dev/null 2>&1 && git rev-parse --git-dir >/dev/null 2>&1; then
  if [ -z "$(git status --porcelain)" ]; then
    exit 0
  fi
fi

FAILURES=""

run() { # run "<etichetta>" <comando...>
  local label="$1"; shift
  local out
  if ! out="$("$@" 2>&1)"; then
    FAILURES="${FAILURES}
--- ${label} FALLITO (${*}) ---
$(printf '%s' "$out" | tail -n 40)"
  fi
}

# 3. Rileva lo stack ed esegui la verifica
if [ -f package.json ]; then
  PM="npm"
  [ -f pnpm-lock.yaml ] && PM="pnpm"
  [ -f yarn.lock ] && PM="yarn"

  # package.json illeggibile = errore, non "niente da verificare"
  if command -v node >/dev/null 2>&1 && ! node -e "JSON.parse(require('fs').readFileSync('package.json','utf8'))" 2>/dev/null; then
    echo "VERIFICA FALLITA: package.json non e' JSON valido. Correggilo prima di procedere." >&2
    exit 2
  fi

  has_script() { node -e "process.exit(require('./package.json').scripts?.['$1']?0:1)" 2>/dev/null; }

  has_script lint      && run "lint"      $PM run lint
  has_script typecheck && run "typecheck" $PM run typecheck
  has_script test      && run "test"      $PM test
elif [ -f pyproject.toml ]; then
  command -v ruff   >/dev/null 2>&1 && run "ruff"   ruff check .
  command -v mypy   >/dev/null 2>&1 && run "mypy"   mypy .
  command -v pytest >/dev/null 2>&1 && run "pytest" pytest -q
elif [ -f go.mod ]; then
  run "go vet"  go vet ./...
  run "go test" go test ./...
fi

# 4. Esito
if [ -n "$FAILURES" ]; then
  {
    echo "VERIFICA FALLITA. Non puoi considerare il lavoro concluso."
    echo "Correggi gli errori qui sotto, rilancia i comandi, e chiudi il turno solo quando passano tutti."
    echo "$FAILURES"
  } >&2
  exit 2
fi

exit 0
