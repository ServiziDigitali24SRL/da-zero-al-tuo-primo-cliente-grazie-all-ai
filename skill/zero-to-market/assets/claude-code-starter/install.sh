#!/usr/bin/env bash
# install.sh — installa lo starter kit Claude Code in un repo cliente.
# Uso:  ./install.sh /percorso/del/repo
# Non sovrascrive nulla: i file già esistenti vengono salvati come <file>.starter

set -euo pipefail

TARGET="${1:-}"
if [ -z "$TARGET" ] || [ ! -d "$TARGET" ]; then
  echo "Uso: ./install.sh /percorso/del/repo-cliente" >&2
  exit 1
fi

SRC="$(cd "$(dirname "$0")" && pwd)"
TARGET="$(cd "$TARGET" && pwd)"

echo "Installo lo starter kit in: $TARGET"

copy() { # copy <relativo>
  local rel="$1"
  local dst="$TARGET/$rel"
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ]; then
    cp "$SRC/$rel" "$dst.starter"
    echo "  esiste già → scritto $rel.starter (confronta e unisci a mano)"
  else
    cp "$SRC/$rel" "$dst"
    echo "  creato  $rel"
  fi
}

copy CLAUDE.md
copy .mcp.json
copy .mcp.json.example
copy .worktreeinclude
copy .claude/settings.json
copy .claude/hooks/_json.sh
copy .claude/hooks/verify.sh
copy .claude/hooks/guard-bash.sh
copy .claude/hooks/format.sh
copy .claude/rules/testing.md
copy .claude/rules/api-design.md
copy .claude/rules/security.md
copy .claude/agents/code-reviewer.md
copy .claude/agents/explorer.md
copy .claude/skills/verify/SKILL.md

chmod +x "$TARGET"/.claude/hooks/*.sh

# .gitignore
if [ -f "$TARGET/.gitignore" ]; then
  if ! grep -q "settings.local.json" "$TARGET/.gitignore"; then
    cat "$SRC/.gitignore.append" >> "$TARGET/.gitignore"
    echo "  aggiornato .gitignore"
  fi
else
  cp "$SRC/.gitignore.append" "$TARGET/.gitignore"
  echo "  creato  .gitignore"
fi

echo
echo "Fatto. Ora, in ordine:"
echo "  1. Compila i placeholder <...> in $TARGET/CLAUDE.md (soprattutto la sezione Comandi)"
echo "  2. Scegli i connettori da $TARGET/.mcp.json.example e mettili in .mcp.json"
echo "  3. cd $TARGET && claude   → poi /doctor e /memory per verificare cosa è stato caricato"
