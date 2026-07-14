# Claude Code — starter kit generico per progetti cliente

Configurazione base da droppare in qualsiasi repo. Non contiene nulla di specifico
di un progetto: i placeholder `<...>` in `CLAUDE.md` vanno compilati ogni volta.

## Installazione

```bash
./install.sh /percorso/del/repo-cliente
```

Non sovrascrive: se un file esiste già lo affianca come `<file>.starter`.

## Cosa contiene, e quando viene caricato

| File | Quando entra in contesto | Costo |
|---|---|---|
| `CLAUDE.md` | ogni sessione, sempre | alto — tienilo sotto 200 righe |
| `.claude/rules/*.md` (con `paths:`) | solo quando Claude apre un file che matcha | ~zero |
| `.claude/skills/verify/SKILL.md` | solo `description` nel prompt; il corpo all'invocazione | ~zero |
| `.claude/agents/*.md` | context window separata, all'invocazione | zero sul thread principale |
| `.mcp.json` | server connessi a inizio sessione, tool schema on-demand | basso |
| `.claude/settings.json` | non è contesto: è **enforcement** del runtime | zero |

**Il punto chiave:** `CLAUDE.md` e `rules/` sono guida — Claude può ignorarli.
`settings.json` (permissions + hooks) è vincolo — non si aggira. Le regole su cui non
si transige vanno negli hook, non nella prosa.

## Gli hook

- `guard-bash.sh` (PreToolUse su Bash) — blocca processi persistenti avviati in locale,
  DROP/TRUNCATE, `push --force`, `reset --hard`, e comandi che stamperebbero segreti.
- `format.sh` (PostToolUse su Edit|Write) — formatta il file appena toccato. Mai bloccante.
- `verify.sh` (Stop) — **il loop di verifica**: se lint/typecheck/test falliscono, esce con
  codice 2 e il turno non si chiude. Claude riceve l'errore e deve correggere e rilanciare.
  Anti-loop: non blocca due volte di fila sullo stesso turno.

Gli hook rilevano lo stack da soli (`package.json` / `pyproject.toml` / `go.mod`).
Se il progetto usa comandi non standard, sono ~10 righe da adattare in `verify.sh`.

## Cosa NON mettere qui

- Segreti: mai in `.mcp.json`, mai in `settings.json`. Solo `${VAR}` da environment.
- Preferenze personali dello sviluppatore: vanno in `.claude/settings.local.json`
  (gitignored) o in `~/.claude/CLAUDE.md`.
- Documentazione lunga: va in `docs/`, e la si linka dal `CLAUDE.md`. Non incollarla dentro.

## Verifica dopo l'installazione

```bash
cd /percorso/del/repo-cliente
claude
/memory     # cosa è stato caricato in contesto
/hooks      # gli hook sono registrati?
/mcp        # i server sono connessi?
/doctor     # diagnosi generale
```
