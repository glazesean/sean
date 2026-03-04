# Sean — Health Knowledge System

Two people maintain this repo. Sean (the user) and a remote collaborator who pushes code, scripts, and templates. Sean runs Claude Code locally.

## Directory Layout

| Folder | Tracked | Who writes | Purpose |
|--------|---------|------------|---------|
| `self-reports/` | **git-tracked** | Sean | His raw voice — transcripts, observations, corrections, questionnaire answers. |
| `self-reports/private/` | **gitignored, own local repo** | Sean | Personal entries Sean doesn't share. Has its own `.git` for backup/history. |
| `docs/questionnaires/` | **git-tracked** | Remote collaborator | Structured prompts to guide Sean's input (blank templates). |
| `docs/entities/self/` | **git-tracked** | Agent | Processed/curated versions of Sean's responses. |
| `data/` | **gitignored** | Machine / Sean's agent | API downloads, lab results, emails, PDFs, raw health records. |
| `derived/` | **git-tracked** | Scripts / Claude | Interpretations, analyses, summaries. Can be rederived. |
| `scripts/` | **git-tracked** | Remote collaborator | Pipeline code, analysis scripts. |
| `docs/` | **git-tracked** | Remote collaborator | Templates, questionnaires (blank), example memos. |
| `.claude/` | **git-tracked** | Remote collaborator | Skills, rules, runbooks, hooks. |

## Data Flow

```
APIs / downloads → data/          (private, gitignored)
Sean speaks      → self-reports/  (tracked, Sean-owned, never overwritten)
Agent curates    → docs/entities/ (tracked, derived from self-reports)
Agent analyzes   → derived/       (tracked, rederivable, shared)
```

## self-reports/ Rules

This is Sean's voice. Treat it as source-of-truth authored input.

- **Append-only.** Create new files, append to existing ones. Never delete content, never overwrite, never truncate. Even if something looks outdated or contradictory — it's his record.
- **Never regenerate** self-report content. If an answer seems wrong, ask Sean — don't "fix" it.
- **Never delete** self-report files. Not even to "clean up." Git history is not a backup plan — the files stay.
- **Protected from remote.** The auto-pull hook ensures Sean's local version wins on merge conflicts.
- Keep the folder shallow. A file per questionnaire, a file per session/topic. No deep nesting.

## Auto-Capture

When Sean mentions personal health information during conversation — symptoms, conditions, medications, family history, phenotype observations, lifestyle patterns, anything about his body or mind — **save it to `self-reports/`** before the session ends. Don't wait to be asked.

Conversation context disappears after the session. His health information belongs in files, not buried in a chat transcript.

- If a relevant file exists (e.g., `symptoms.md`, `medications.md`), append to it with a date.
- If no file fits, create one with a clear name.
- **If the information is sensitive**, ask Sean: "self-reports/ or self-reports/private/?" Default to `self-reports/` (shared) unless he says otherwise or the topic is clearly private.
- Quote Sean's words when possible. Don't paraphrase health self-reports into clinical language — preserve how he said it.
- After writing to `self-reports/private/`, commit it there: `cd self-reports/private && git add -A && git commit -m "..."`. This is a separate local repo — it needs its own commits.

## derived/ Rules

- Everything here can be regenerated from `data/` + `self-reports/` + `scripts/`.
- Safe for the agent to overwrite, update, or restructure.
- When writing derived files, note what inputs produced them (which self-reports, which data files).

## data/ Convention

Gitignored. Never committed. Contents:
- Lab results, biomarker exports, API downloads
- Raw email exports (via Google API)
- Downloaded PDFs, health records
- Anything private that shouldn't leave Sean's machine

## Auto-Pull (SessionStart Hook)

Every time Sean starts a Claude Code session, the hook:
1. **Pulls this repo** — merges with remote-wins strategy (code, scripts, docs, derived). **Exception: `self-reports/`** — Sean's local version always wins.
2. **Pulls `~/Projects/skills/`** — clones on first run from `markusstrasser/skills.git`. Copies relevant skills (epistemics, researcher, source-grading, entity-management, causal-check) into `.claude/skills/`.
3. **Pulls `~/Projects/claude-config/`** — clones on first run from `markusstrasser/claude-config.git`. Syncs global `~/.claude/CLAUDE.md` (universal agent rules, best practices).
4. **Pulls `~/Projects/papers-mcp/`** — clones on first run from `markusstrasser/papers-mcp.git`. Runs `uv sync` on first clone. Provides `mcp__research__*` tools.
5. **Injects paths and keys** — replaces placeholders in `.mcp.json`: Exa API key from macOS keychain, papers-mcp directory path.

If offline or anything fails, the session proceeds normally with local state.

**First-time setup:** No credentials needed — skills and claude-config repos are public. The hook auto-clones via HTTPS on first session.

## Research Tools (MCP Setup)

Six MCP servers are configured in `.mcp.json`. Sean needs these API keys exported in his shell (`.zshrc` or `.zprofile`):

| Key | Service | How to get |
|-----|---------|-----------|
| `EXA_API_KEY` | Exa semantic search | https://exa.ai — stored in macOS keychain, auto-injected by session hook |
| `BRAVE_API_KEY` | Brave web/news search | https://brave.com/search/api/ |
| `PERPLEXITY_API_KEY` | Perplexity AI answers | https://docs.perplexity.ai/ |
| `S2_API_KEY` | Semantic Scholar (research MCP) | https://api.semanticscholar.org/ — optional but recommended for rate limits |

No key needed: **paper-search** (arXiv, PubMed, bioRxiv — free), **Context7** (library docs — free).

The **research** MCP (`papers-mcp`) provides `mcp__research__*` tools — paper search, full-text extraction, corpus management, claim verification. Auto-cloned from GitHub by the session hook.

**Prerequisite:** `node`/`npm` and `uv` must be installed. Both are standard on the collaborator's setup; Sean may need to install them via `brew install node uv`.

## Skills Available

| Skill | Trigger | What it does |
|-------|---------|-------------|
| `/researcher` | Deep research questions | Multi-source research with epistemic rigor, anti-fabrication safeguards |
| `/epistemics` | Bio/medical claims | Evidence hierarchy, source-grade-on-write, counterfactual generation |
| `/source-grading` | Investigations, OSINT | NATO Admiralty grading (A-F reliability, 1-6 credibility) |
| `/entity-management` | Track health entities | Versioned knowledge files for conditions, medications, doctors, genes |
| `/causal-check` | "Why" questions | Causal inference discipline — shape-match explanations, define the null, predict footprints |

## Git Workflow

- Remote collaborator pushes to `main`. No branches.
- Sean's agent auto-pulls on session start.
- Sean commits journal entries and can commit derived output.
- Merge conflicts: remote wins everywhere except `self-reports/`.
