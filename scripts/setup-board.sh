#!/usr/bin/env bash
# Create a kanban board in the current working directory.
# Usage: bash ~/.agents/skills/kanban/scripts/setup-board.sh

set -euo pipefail

BOARD="kanban"

# Create board directory and status folders
mkdir -p "$BOARD"/{1-backlog,2-in-progress,3-blocked,4-review,5-done}

# Create README.md
touch "$BOARD/README.md"

# Copy board instructions and card template so the generated board is self-contained.
cp "$(dirname "$0")/../references/AGENTS.md" "$BOARD/AGENTS.md"
cp "$(dirname "$0")/../references/card-template.md" "$BOARD/card-template.md"

echo "✅ Kanban board created in $BOARD/"
echo "   1-backlog  — planned work"
echo "   2-in-progress  — currently being done"
echo "   3-blocked  — stalled"
echo "   4-review  — under review"
echo "   5-done  — complete"
echo ""
echo "Add cards as markdown files in the status folders."
echo "See $BOARD/AGENTS.md for instructions."
