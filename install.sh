#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPTS=(-g -y -a junie -a claude-code)

add() {
  local repo="$1"; shift
  local args=()
  for s in "$@"; do args+=(--skill "$s"); done
  echo "+ $repo ${args[*]}"
  npx -y skills add "$repo" "${args[@]}" "${OPTS[@]}"
}

add_all() {
  echo "+ $1 (all)"
  npx -y skills add "$1" --skill '*' "${OPTS[@]}"
}

command -v npx &>/dev/null || { echo "Error: npx required. Install Node.js: https://nodejs.org" >&2; exit 1; }

echo "🧠 Installing skills for JetBrains Junie & Claude Code..."

add     "anthropics/skills" "skill-creator"
add     "alexandru/skills" "jspecify-nullness" "kotlin-java-library"
add     "glaforge/deslopify" "deslopify"
add     "aldefy/compose-skill" "jetpack-compose-expert-skill"
add_all "$SCRIPT_DIR/skills"
add_all "Kotlin/kotlin-agent-skills"

echo "✅ Done."
