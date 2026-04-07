# CLAUDE

## Ruby

Gem source: `bundle show <gem>`.

## Rails

Use generators, not hand-written files.

## Go

Run `go fix` on your code.

## Testing

- Strict red/green TDD: failing test first, watch it fail, then minimum code to pass
- Exhaustive unit, 10-20% integration, few system tests
- Don't extract test setup into helpers — duplicate it inline per test. No shared state, no deep nesting.
- Assert against literals, no runtime generation unless the test needs uniqueness
- One assertion per test, group related assertions in system/integration tests
- Prefer fixtures over factories

## Search

Don't use `find`/`grep`/`rg`, use your Glob/Grep tools.

## Git, Github

- `gh` for GitHub interactions
- `--no-gpg-sign` unless told otherwise
- Push only when asked
- Don't query the GitHub API to explore repos, shallow-clone to /tmp (`--depth=1`)

## llm-wiki

Personal knowledge base at `~/llm-wiki/`. When asked to file knowledge, read
`~/llm-wiki/CLAUDE.md` for conventions and file accordingly.

## Commit messages

- Subject: <72 cols, concrete action ("Bring up X", "Fix Y")
- Body: hard-wrap 80 cols. Explain why and any non-obvious decisions or alternatives considered. Do not recap what changed file-by-file — the diff already shows that. If the whole change is self-explanatory from the diff, a subject-only commit is fine.
- Markdown formatting
