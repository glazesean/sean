# Sean — Health Knowledge System

Two people maintain this repo. Sean (the user) and a remote collaborator who pushes code, scripts, and templates. Sean runs Claude Code locally.

## Directory Layout

| Folder | Tracked | Who writes | Purpose |
|--------|---------|------------|---------|
| `data/` | **gitignored** | Machine / Sean's agent | API downloads, lab results, emails, PDFs, raw health records. Ephemeral or private. |
| `journal/` | **git-tracked** | Sean | His authored input: questionnaire answers, self-reports, transcripts, phenotype notes, symptom logs, interview summaries. Keep flat. |
| `journal/private/` | **gitignored, own local repo** | Sean | Personal entries Sean doesn't share. Has its own `.git` for backup/history. Never leaves his machine. |
| `derived/` | **git-tracked** | Scripts / Claude | Interpretations, analyses, summaries built from data + journal. Can be rederived — safe to regenerate. |
| `scripts/` | **git-tracked** | Remote collaborator | Pipeline code, analysis scripts. |
| `docs/` | **git-tracked** | Remote collaborator | Templates, questionnaires (blank), example memos. |
| `.claude/` | **git-tracked** | Remote collaborator | Skills, rules, runbooks, hooks. |

## Data Flow

```
APIs / downloads → data/     (private, gitignored)
Sean speaks      → journal/  (tracked, Sean-owned, never overwritten)
Agent analyzes   → derived/  (tracked, rederivable, shared)
```

## journal/ Rules

This is Sean's voice. Treat it as source-of-truth authored input.

- **Append-only.** Create new files, append to existing ones. Never delete content, never overwrite, never truncate. Even if something looks outdated or contradictory — it's his record.
- **Never regenerate** journal content. If a questionnaire answer seems wrong, ask Sean — don't "fix" it.
- **Never delete** journal files. Not even to "clean up." Git history is not a backup plan — the files stay.
- **Protected from remote.** The auto-pull hook ensures Sean's local version wins on merge conflicts.
- Keep the folder shallow. A file per questionnaire, a file per session/topic. No deep nesting.

## Auto-Capture

When Sean mentions personal health information during conversation — symptoms, conditions, medications, family history, phenotype observations, lifestyle patterns, anything about his body or mind — **save it to `journal/`** before the session ends. Don't wait to be asked.

Conversation context disappears after the session. His health information belongs in files, not buried in a chat transcript.

- If a relevant journal file exists (e.g., `symptoms.md`, `medications.md`), append to it with a date.
- If no file fits, create one with a clear name.
- **If the information is sensitive**, ask Sean: "journal/ or journal/private?" Default to `journal/` (shared) unless he says otherwise or the topic is clearly private.
- Quote Sean's words when possible. Don't paraphrase health self-reports into clinical language — preserve how he said it.
- After writing to `journal/private/`, commit it there: `cd journal/private && git add -A && git commit -m "..."`. This is a separate local repo — it needs its own commits.

## derived/ Rules

- Everything here can be regenerated from `data/` + `journal/` + `scripts/`.
- Safe for the agent to overwrite, update, or restructure.
- When writing derived files, note what inputs produced them (which journal entries, which data files).

## data/ Convention

Gitignored. Never committed. Contents:
- Lab results, biomarker exports, API downloads
- Raw email exports (via Google API)
- Downloaded PDFs, health records
- Anything private that shouldn't leave Sean's machine

## Auto-Pull (SessionStart Hook)

Every time Sean starts a Claude Code session, the hook:
1. Fetches the latest from remote
2. Merges with `-X theirs` — remote version wins on conflict (code, scripts, docs, derived)
3. **Exception: `journal/`** — Sean's local version always wins. His authored input is never overwritten by a pull.

If offline or merge fails, the session proceeds normally with local state.

## Git Workflow

- Remote collaborator pushes to `main`. No branches.
- Sean's agent auto-pulls on session start.
- Sean commits journal entries and can commit derived output.
- Merge conflicts: remote wins everywhere except `journal/`.
