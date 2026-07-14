#!/usr/bin/env bash
# .claude/hooks/format.sh — hook PostToolUse (matcher: Edit|Write)
# Formatta il singolo file appena modificato. Silenzioso: non deve mai bloccare.

set -uo pipefail
cd "${CLAUDE_PROJECT_DIR:-$(pwd)}" || exit 0

# shellcheck source=/dev/null
. "$(dirname "$0")/_json.sh"

FILE="$(json_get "$(cat)" '.tool_input.file_path')"
[ -z "$FILE" ] && exit 0
[ ! -f "$FILE" ] && exit 0

case "$FILE" in
  *.ts|*.tsx|*.js|*.jsx|*.json|*.css|*.md)
    if [ -f package.json ]; then
      npx --no-install prettier --write "$FILE" >/dev/null 2>&1 || true
    fi
    ;;
  *.py)
    command -v ruff >/dev/null 2>&1 && ruff format "$FILE" >/dev/null 2>&1 || true
    ;;
  *.go)
    command -v gofmt >/dev/null 2>&1 && gofmt -w "$FILE" >/dev/null 2>&1 || true
    ;;
esac

exit 0
