# CLAUDE

## Prose

- No em dashes. Use commas or new sentences.
- Don't summarize what you just did, the diff speaks for itself.

## Working approach

- Minimize churn. Make the smallest change that solves the problem. No helper methods, extra error handling, or surrounding-code cleanup unless asked.
- Evidence-based claims. Cite docs or point to code. Don't infer rules from examples and present them as fact; if unsure, say so.
- Understand before advising removal. Don't declare code "safe to remove" or "decorative" unless you actually know its purpose. If unsure, investigate first.

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
- Don't query the GitHub API to explore repos. Don't shallow-clone. Use `git agent-scratch <url>` (stdout = clone path)
- Don't rewrite history
- Don't perform destructive operations without explicit consent
- Don't post/comment/reply as me on GitHub

## Scratch files

Store scratch/planning notes outside the repo (e.g. `~/notes/<project>/`), not in a gitignored `tmp/`. Gitignored files aren't recoverable if something goes wrong.

## Commit messages

- Subject: <72 cols, concrete action ("Bring up X", "Fix Y")
- Body: hard-wrap 80 cols. Explain why and any non-obvious decisions or alternatives considered. Do not recap what changed file-by-file — the diff already shows that. If the whole change is self-explanatory from the diff, a subject-only commit is fine.
- Keep bodies to 2-4 short paragraphs, 2-3 lines each. Cut every sentence that restates the diff.
- Be empirical, not speculative. If you cite a mechanism, verify it; don't claim "uniformly at random" when the data shows otherwise.
- Reference identifiers by name and format them as code (`startFoo`, `ticker.C`), not "the sleep" or "the ticker".
- When the fix is non-obvious, pre-empt the reader's "why didn't you just X?" by covering each tempting alternative and why it fails.
- Markdown formatting

## Writing CLAUDE.md rules

Prefer negative framing ("Don't X") over positive-first ("Use Y, not X"). Negative examples are stronger guardrails for preventing unwanted behavior.
