---
name: kanban
description: Set up and manage a local file-based Kanban board for tracking units of work. Use when user mentions kanban, task board, card creation, moving cards, or work tracking.
---

# Kanban

## Quick Start

Run the setup script to create a new board in the CWD:

```bash
cd your-project
bash ~/.agents/skills/kanban/scripts/setup-board.sh
```

This creates `kanban/` with status folders. Add cards as markdown files.

## Board Structure

```
kanban/
├── README.md        (empty or filled with initiative context)
├── AGENTS.md        (instructions — copy from skill)
├── card-template.md (local card template reference)
├── 1-backlog/
├── 2-in-progress/
├── 3-blocked/
├── 4-review/
└── 5-done/
```

## Card Convention

- **Filename:** `PREFIX-XXX.md` (e.g., `AUTH-001.md`). Agent picks the prefix from initiative context or repo name. Numbers are globally sequenced across the entire board.
- **New cards** go in `kanban/1-backlog/` by default.
- **Use the card template:** `kanban/card-template.md`

## Operations

### Create a Card

1. Determine the next global number (highest existing number across all status folders + 1, zero-padded to 3 digits).
2. Write the card using the card template.
3. Place it in the appropriate status folder.

### Move a Card

Move the file between `kanban/[status]/` folders. Content stays intact.

### Update a Card

Edit the card's markdown content directly (title, description, tasks, acceptance_criteria).

### Board Setup

1. Run the setup script.
2. Optionally write to `kanban/README.md` with initiative context.
3. Optionally write to `kanban/AGENTS.md` with domain/project-specific agent instructions.

See [references/AGENTS.md](references/AGENTS.md) for the standard agent instructions template.

## Status Codes

| #    | Folder             | Meaning               |
|------|--------------------|-----------------------|
| 1    | backlog            | Planned work          |
| 2    | in-progress        | Currently being done  |
| 3    | blocked            | Stalled (note why)    |
| 4    | review             | Under review          |
| 5    | done               | Complete              |

## Notes

- Board isolation is by CWD — each project gets its own `kanban/` directory.
- When no context is provided, create the board structure with no cards.
- Card numbers are relative ordering hints, not IDs. Keep them monotonically increasing across the board.
