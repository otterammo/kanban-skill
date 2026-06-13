# kanban-skill

File-based kanban boards for tracking units of work broken down from larger initiatives, stored as a directory structure where folders are columns and markdown files are cards — designed for agentic workflows where initiatives are decomposed into numbered, tracked task cards.

## Installation

```bash
git clone <this-repo-url> ~/.agents/skills/kanban
```

`~/.agents/skills/` is the standard install location for local agent skills.

## Usage

The most common flow:

1. Prompt your agent: _"set up a kanban board for this project"_
2. The agent creates the board structure in the CWD via `bash ~/.agents/skills/kanban/scripts/setup-board.sh`
3. The agent breaks the initiative into numbered cards, placing them in `kanban/1-backlog/`
4. Cards are moved between columns as work progresses
5. Boards are project-local — one `kanban/` directory per repository

You can also run the setup script directly without any agent harness.

Each board includes an `AGENTS.md` file for agent-facing instructions and a local `card-template.md` reference.

## Design Notes

- Cards are globally numbered across the entire board
- The agent chooses the card prefix based on initiative context
- Board isolation is via CWD — no shared state between projects
- When no context is provided, the board is created with no cards
