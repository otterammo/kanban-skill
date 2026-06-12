# Kanban — File-Based Agent Skill

A file-based Kanban skill for creating and managing local Kanban boards for tracking units of work.

## Overview

This skill sets up a simple markdown-based Kanban system where **folders are columns** and **files are cards**. It's designed for agentic workflows where an AI agent creates, moves, and updates cards as part of breaking down initiatives into actionable tasks.

## Board Structure

```
kanban/
├── README.md        ← initiative context (optional)
├── AGENTS.md        ← instructions (copied from skill)
├── 1-backlog/       ← planned work
├── 2-in-progress/   ← currently being done
├── 3-blocked/       ← stalled
├── 4-review/        ← under review
└── 5-done/          ← complete
```

The numbered folders maintain status ordering at the file-system level, making it easy for agents to find the right column.

## Cards

Each card is a markdown file following this naming convention:

```
PREFIX-XXX.md
```

- **PREFIX** — domain/initiative abbreviation (e.g., `AUTH`, `API`, `ORCH`)
- **XXX** — globally sequenced three-digit number across the entire board

Card content:

```md
---
title: ""
description: ""
tasks: []
acceptance_criteria: []
---

## Description

## Tasks

- [ ] 

## Acceptance Criteria

- 
```

## Usage

### Agent Skill

Installed in `~/.agents/skills/kanban/` — the agent auto-discovers and loads it when you mention kanban, task board, card creation, or work tracking.

### Setup Script

```bash
cd your-project
bash "$(pi skill kanban)/scripts/setup-board.sh"
```

Creates the `kanban/` directory with all status folders, an empty `README.md`, and a copy of `AGENTS.md`.

## Design Decisions

- **Board isolation** — each project's `kanban/` in the CWD is a separate board
- **Agent-chosen prefixes** — no rigid convention; the agent picks based on context
- **Global numbering** — card numbers are monotonic across the entire board, not per-column
- **No card metadata** — status lives in the folder, not in frontmatter. Cards keep only: title, description, tasks, acceptance_criteria
- **Minimal init** — if no context is provided, the board is created with zero cards

## Project Structure

```
kanban/
├── SKILL.md              ← agent instructions
├── AGENTS.md             ← reusable agent instructions for boards
├── README.md             ← board-level context
├── scripts/setup-board.sh ← creates a new board via CWD
├── references/card-template.md ← card markdown template
└── references/AGENTS.md  ← standard agent instructions
```
