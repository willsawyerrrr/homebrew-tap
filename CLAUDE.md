# CLAUDE.md

Homebrew tap. See `../CLAUDE.md` for shared conventions.

## Layout

- `Casks/<name>.rb`: one cask per app, installing the zip attached to the app's GitHub release.
- `README.md`: install instructions and the table of casks. Update it when adding or removing a cask.

## Updating a cask

- Bump `version` and `sha256` (of the release's `<App>.zip`) together; commit as `feat: Update <name> to v<version>`.
- Validate with `brew style --fix Casks/<name>.rb` and `brew audit --cask --online <name>`.
- CI runs the same `brew style` and `brew audit` checks on every pull request. The `CI Status` job aggregates every CI job; it is the only check `main`'s ruleset requires. The ruleset also requires a pull request (squash merges only) and blocks force pushes and deletion. Add new CI jobs to its `needs`.

## Runtime parity

The tap has no language runtime. CI runs `brew style` and `brew audit` on `macos-26`, the same macOS runner image the other repos use. Bump it with them.
