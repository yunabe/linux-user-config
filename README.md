# Dotfiles for yunabe

This repository manages my personal dotfiles and local development environment settings.
It is intentionally simple: keep source files in this repo and symlink them into `$HOME`.

## What this repo is

- Purpose: single source of truth for shell/editor/git tool settings.
- Scope: mostly terminal-oriented developer setup (`zsh`, `git`, `emacs`, `screen`, `npm`, `hg`).
- Non-goal: this is not a generic framework for all machines; it reflects my personal workflow.

## Historical context

This repository has been used for a long time.

- First commit: **2010-10-31** (`first commit`)
- Active update periods: 2010-2012, 2015, 2017-2019
- Recent sparse updates: 2022 and 2026

The current maintenance challenge is expected: long-lived dotfiles accumulate stale entries and one-off additions over time.

## Current managed files

- `_zshrc`: shell behavior, PATH, aliases, environment variables
- `_gitconfig`: git defaults, aliases, merge style, optional integrations (e.g. LFS)
- `_emacs` and `Cask`: editor config and packages
- `_screenrc`, `_hgrc`, `_npmrc`: tool-specific defaults
- `setup.sh`: installs symlinks from this repo into `$HOME`

## Related docs

- `AGENTS.md`: instructions for AI coding agents working in this repository
- `PROJECT_STATE.md`: current cleanup context, risks, and open questions

## Setup

```bash
cd "$HOME"
# Read-only clone
git clone http://github.com/yunabe/linux-user-config.git config
# or writable clone
git clone git@github.com:yunabe/linux-user-config.git config

"$HOME/config/setup.sh"
```

## Update / Sync

```bash
cd "$HOME/config"
git pull
```
