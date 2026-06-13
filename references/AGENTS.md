# Agent Instructions — Kanban Board

## How the Board Works

This is a file-based Kanban system. Each status is a folder. Each card is a markdown file.

### Status Folders

| #   | Folder      | Meaning              |
| --- | ----------- | -------------------- |
| 1   | backlog     | Planned work         |
| 2   | in-progress | Currently being done |
| 3   | blocked     | Stalled (note why)   |
| 4   | review      | Under review         |
| 5   | done        | Complete             |

### Card Filename Convention

`PREFIX-XXX.md`

- `PREFIX` — domain or initiative abbreviation (e.g., `AUTH`, `API`, `ORCH`)
- `XXX` — globally sequenced three-digit number across the entire board

### Card Structure

See [card-template.md](card-template.md) for the full card template.

### New Cards

All new cards go in `kanban/1-backlog/` unless explicitly stated.

### Moving Cards

Move the file between `kanban/` subfolders. No content changes needed.

### Updating Cards

Edit the card markdown directly. Maintain the frontmatter structure.
