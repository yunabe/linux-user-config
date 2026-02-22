# Project State (Dotfiles)

## Why this file exists

This repository is stable but old. Some settings may be outdated, unused, or added temporarily and never revisited.
This file is a working context for future maintenance (human or AI agent).

## Snapshot (as of 2026-02-22)

- Repo type: personal dotfiles
- First commit: 2010-10-31
- Current focus: modernizing long-lived shell config safely with small diffs.
- Main risk: remaining legacy helpers/aliases may not match current tool availability

## Known cleanup themes

1. PATH hygiene (`_zshrc`)
- Keep path handling predictable and documented.
- Continue validating whether each path is still useful across machines.

2. Legacy language/tool assumptions
- Some helper functions and aliases still reflect older workflows.
- Verify Python/CLI assumptions periodically against current local environments.

3. Comment quality
- Keep comments concise and aligned with actual behavior.
- Correct comments when behavior changes (especially around shell options and glob qualifiers).

## Suggested maintenance workflow

1. Pick one domain (`zsh` or `emacs` or `git`).
2. List candidates for removal/modernization.
3. Verify locally (command exists? path exists? still used?).
4. Apply minimal diff.
5. Commit with message that reflects full diff scope.

## Open questions

- Which aliases/helpers in `_zshrc` are still used weekly vs. purely historical?
- Should command-spell correction (`correct`) stay disabled long-term?
- Is `_emacs` still actively used, or mostly historical?

## Optional next artifacts

- `DECISIONS.md`: short log of intentional keeps/removals.
- `CHECKLIST.md`: recurring cleanup checklist (quarterly).
