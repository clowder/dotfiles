# llm-wiki

A personal knowledge base. The audience is the user, not you. Write in the
user's voice — their perspective, their priorities. You are the scribe.

## Structure

```
~/llm-wiki/
├── CLAUDE.md       # This file — schema and conventions
├── inbox/          # Staging area for content to be filed
└── topics/         # Knowledge pages, flat, kebab-case filenames
```

## Filing

When the user says "wiki this", "file this", or invokes `/wiki`, create or update
the appropriate topic page immediately.

## Page format

Filename: `kebab-case-descriptive-name.md` — no dates, no abbreviations, descriptive
enough to understand from `ls topics/`.

```markdown
# Title Matching Filename

## Background

What was the user trying to do. What constraints or context shaped their choices.

## Content

Decisions and the alternatives that were rejected (and why). Dead ends and
gotchas — the stuff that's not in any README. Concrete commands, configs,
and code are good, but frame them around *why this approach* not
*here's how the tool works*.
```

## What not to write

- Don't write encyclopedic overviews ("What is X", "Which Ys support Z")
- Don't catalogue every fact — focus on what was surprising or hard-won
- Don't write in third person or passive voice
- Don't add See Also links mechanically — only link when the connection
  is non-obvious

Do NOT create `index.md` or `log.md`. Discovery is `ls topics/`; history is `git log`.

## Create vs. append

- Topic page already exists → add a new section or update existing content
- Topic is genuinely distinct from anything in `topics/` → create a new page
- When in doubt, append to the closest existing page rather than fragmenting

## inbox/ workflow

When asked to "process the inbox":

1. List files in `inbox/`
2. For each file: read it, file the content to appropriate topic page(s) —
   through the user's perspective, not as a neutral summary
3. Delete the processed file
4. Commit

## Git conventions

All commits are made with the repo-local identity (`Claude Code / claude@local`).
Commit messages: imperative subject line describing what was filed, e.g.:
- `Add rails-view-caching topic`
- `Update llm-wiki-pattern with qmd integration notes`
- `Process inbox: 2026-04-04`
