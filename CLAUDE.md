# CLAUDE.md

Homebrew tap. See `../CLAUDE.md` for shared conventions.

## Layout

- `Casks/<name>.rb`: one cask per app, installing the zip attached to the app's GitHub release.
- `README.md`: install instructions and the table of casks. Update it when adding or removing a cask.

## Updating a cask

- Bump `version` and `sha256` (of the release's `<App>.zip`) together; commit as `feat: Update <name> to v<version>`.
- Validate with `brew style --fix Casks/<name>.rb` and `brew audit --cask --online <name>`.
- CI runs the same `brew style` and `brew audit` checks on every pull request.
