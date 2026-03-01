# Project Rules

## Directory Layout

- `.claude/` — skills, rules, runbooks (version controlled, shareable)
- `docs/` — templates, questionnaires, example memos (version controlled, shareable)
- `data/` — personal analytics, lab results, notes, saved outputs (gitignored, never committed)

## data/ Convention

Put anything personal or session-specific into `data/`:
- Lab results, biomarker exports
- Filled-out questionnaires with real answers
- Research memos with personal health details
- Downloaded PDFs, raw data files
- Any output you want to save but not share

`data/` is in `.gitignore`. It will never be committed or pushed.
