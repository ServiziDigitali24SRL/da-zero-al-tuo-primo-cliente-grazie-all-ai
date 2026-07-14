# _json.sh — estrae un campo dal JSON dell'hook senza dipendere da jq.
# Uso: VALUE="$(json_get "$INPUT" '.tool_input.command')"
json_get() {
  local input="$1" path="$2"
  if command -v jq >/dev/null 2>&1; then
    printf '%s' "$input" | jq -r "${path} // \"\""
    return
  fi
  local key="${path#.}"        # es: tool_input.command
  if command -v node >/dev/null 2>&1; then
    printf '%s' "$input" | node -e '
      let s="";process.stdin.on("data",d=>s+=d).on("end",()=>{
        try{let o=JSON.parse(s);for(const k of process.argv[1].split("."))o=o?.[k];
        process.stdout.write(o===undefined||o===null?"":String(o));}catch(e){process.stdout.write("");}
      });' "$key"
    return
  fi
  if command -v python3 >/dev/null 2>&1; then
    printf '%s' "$input" | python3 -c '
import sys,json
try:
    o=json.load(sys.stdin)
    for k in sys.argv[1].split("."): o=o[k]
    sys.stdout.write("" if o is None else str(o))
except Exception: sys.stdout.write("")' "$key"
    return
  fi
  printf ''
}
