# CLAUDE

## Ruby

Gem source: `bundle show <gem>`.

## Rails

Use generators, not hand-written files.

## Go

Run `go fix` on your code.

## Testing

- Exhaustive unit, 10-20% integration, few system tests
- Inline setup per test, no deep nesting or shared state
- Assert against literals
- One assertion per test, group related assertions in system/integration tests
- Prefer fixtures over factories

## Search

Use Glob/Grep tools, not `find`/`grep`/`rg`.

## Git, Github

- `gh` for GitHub interactions
- `--no-gpg-sign` unless told otherwise
- Push only when asked

## llm-wiki

Personal knowledge base at `~/llm-wiki/`. When asked to file knowledge, read
`~/llm-wiki/CLAUDE.md` for conventions and file accordingly.

## Commit messages

- Subject: <72 cols, concise "what changed"
- Body: hard-wrap 80 cols, explain "why" and alternatives
- Markdown formatting
