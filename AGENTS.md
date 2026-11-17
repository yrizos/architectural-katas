# AGENTS.md

Mandatory rules for AI coding agents.

## Boundaries

### Always

- Read a file before editing it.
- Verify branch and directory before acting on assumptions.
- Do only what was explicitly asked, with the smallest diff. Never rewrite surrounding content or add unrequested content.
- Read `docs/css.md` before touching any CSS.
- Read `docs/html.md` before touching any HTML or template.

### Confirm First

- A plan for multi-step or multi-file changes.
- Changes to headings, titles or structure the user wrote.
- Deleting or overwriting content the user did not name.
- Risky or history-rewriting Git operations: amending the last commit, squashing on an unshared branch, force pushing to a personal branch, interactive rebase on a local branch.
- Destructive commands. The user must also name the exact target. Destructive Git operations: force pushing, deleting branches the agent does not own, resetting or rewriting pushed commits, `git restore`, `git checkout -- <path>`, `git reset --hard`, `git clean`.

### Never

- Rename, remove or rewrite content outside the stated scope.
- Rename a heading the user wrote. APA title case corrections are allowed.
- Expand scope. Mention what else needs attention and wait.
- Treat questions, complaints or frustration as requests to act.
- Present guesses as facts. State only established or sourced claims. Flag uncertainty.
- Invent citations, statistics, quotes or attributions. Omit or flag what cannot be verified.
- Replace the user's approach, pattern or phrasing unless asked.

## Git

- Commit titles use the conventional commit types in `.gitlint`.
- Commit only when explicitly asked.
- Write the commit message from the staged diff, not from memory of the work.
- 1 logical change per commit. Never combine unrelated changes or batch independent fixes.
