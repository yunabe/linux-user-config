# Project State (Dotfiles)

## Why this file exists

This repository is stable but old. Some settings may be outdated, unused, or added temporarily and never revisited.
This file is a working context for future maintenance (human or AI agent).

## Snapshot (as of 2026-02-21)

- Repo type: personal dotfiles
- First commit: 2010-10-31
- Recent commits:
  - 2026-02-21: document Git LFS config in `_gitconfig`
  - 2026-02-21: adjust PATH entries in `_zshrc`
- Main risk: stale PATH/tool references causing confusion or accidental priority issues

## Known cleanup themes

1. PATH hygiene (`_zshrc`)
- Validate each PATH entry is still needed.
- Prefer helper functions (`append_path`/`prepend_path`) over raw `export PATH=...`.
- Keep priority changes (`prepend_path`) only when intentional.

2. Legacy language/tool assumptions
- Old Ruby/Python path entries may no longer match currently used versions.
- Emacs package assumptions in `Cask` may have drifted from current workflow.

3. Comment quality
- Non-obvious bootstrap lines should explain origin and purpose.
- Good example: Git LFS section in `_gitconfig` now documents that it comes from `git lfs install --global`.

## Suggested maintenance workflow

1. Pick one domain (`zsh` or `emacs` or `git`).
2. List candidates for removal/modernization.
3. Verify locally (command exists? path exists? still used?).
4. Apply minimal diff.
5. Commit with message that reflects full diff scope.

## Open questions

- Which toolchains are truly active now (Go, Flutter, Maven, gcloud, etc.)?
- Is `_emacs` still actively used, or mostly historical?
- Should this repo stay as one profile or split by machine/OS role?

## Optional next artifacts

- `DECISIONS.md`: short log of intentional keeps/removals.
- `CHECKLIST.md`: recurring cleanup checklist (quarterly).
