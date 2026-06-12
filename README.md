# Kanban

File-based Kanban boards for tracking units of work.

## Use Case

Break down a project initiative into a numbered set of cards across a Kanban board. Agents create, move, and update cards as work progresses.

## Quick Start

```bash
cd your-project
bash "$(pi skill kanban)/scripts/setup-board.sh"
```

Create cards as markdown files in `kanban/1-backlog/`. Move them by relocating files to the appropriate status folder. See `kanban/AGENTS.md` for instructions.
