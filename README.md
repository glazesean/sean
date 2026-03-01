# Health Research Toolkit for Claude Code

A portable kit for rigorous AI-assisted health research. Contains skills, rules, runbooks, templates, questionnaires, and example research memos — all designed to make Claude Code produce **evidence-graded, citation-verified, anti-hallucination** health research.

> These files were developed over months of health research with Claude Code, refined through post-mortems of agent failures (fabricated citations, confirmation bias, single-axis search blindness). They encode hard-won lessons, not aspirational rules.

---

## Quick Start

1. Copy `.claude/` into your project's `.claude/` directory
2. Copy `templates/` wherever you keep docs
3. Fill out the questionnaires in `questionnaires/` (audio transcription → cleanup works great)
4. Read the examples in `examples/` to see what the output looks like
5. Configure MCP servers (see below)

## What's In Here

### `.claude/skills/` — AI Agent Skills (drop into `.claude/skills/`)

| Skill | What it does |
|-------|-------------|
| **`researcher/SKILL.md`** | Full autonomous research agent — phased structure (ground truth → divergence → disconfirmation → verification → synthesis), effort tiers (quick/standard/deep), anti-fabrication safeguards |
| **`researcher/DOMAINS.md`** | Domain-specific gotchas — biomedical, trading, math, OSINT, social science, economics |
| **`epistemics/SKILL.md`** | Bio/medical evidence hierarchy (9 grades), anti-hallucination rules, inference separation, PGx guardrails, model-specific failure modes |
| **`source-grading/SKILL.md`** | NATO Admiralty grading system — 2-axis scoring (source reliability A-F × information credibility 1-6) |

### `.claude/rules/` — Auto-Loaded Rules (trigger on file paths)

| Rule | Triggers on | What it does |
|------|------------|-------------|
| **`epistemics.md`** | Writing to `docs/research/**` | Evidence hierarchy, counterfactual generation, self-grading, mathematical claims standards |
| **`research-depth.md`** | Writing to `docs/**` | Depth decision tree (HIGH/MEDIUM/LOW stakes), primary source obligations, provenance tagging system |

### `.claude/runbooks/` — Research Procedures

| Runbook | What it does |
|---------|-------------|
| **`research.md`** | End-to-end research procedure: ground truth audit → exploratory divergence → hypothesis → disconfirmation → verification → synthesis. Includes memo contract, QA commands, evidence hierarchy |

### `templates/` — Reusable Scaffolding

| Template | What it does |
|----------|-------------|
| **`RESEARCH_PROMPT.md`** | 386-line research agent prompt. Phased workflow, 12 documented anti-patterns, orchestrator dispatch rules for parallel agents. Paste into agent context for rigorous research |
| **`_MEMO_TEMPLATE.md`** | Research memo template — decision claims table, ground truth, findings, disconfirmation log, verification log, search log |
| **`MEMO_CONTRACT.md`** | What sections a claim-heavy memo must have, plus QA commands |

### `questionnaires/` — Health Phenotyping (fill these out)

| File | Time | What it covers |
|------|------|---------------|
| `01_family_and_medical_history.md` | 15-20 min | Family history, medical timeline, medications |
| `02_current_symptoms.md` | 15-20 min | System-by-system symptom inventory |
| `03_psychiatric_and_cognitive.md` | 10-15 min | Psychiatric phenotype, cognitive function |
| `04_lifestyle_and_environment.md` | 10 min | Diet, exercise, sleep, substances, work |
| `05_genotype_phenotype_validation.md` | 10 min | Do genetic predictions match reality? **Customize with YOUR variants** |
| `06_standardized_tests.md` | 30-45 min | Validated clinical scales (PHQ-9, GAD-7, ISI, COMPASS-31, etc.) with links |

### `examples/` — What Good Output Looks Like

These are anonymized real research memos showing the methodology in action:

| Example | What it demonstrates |
|---------|---------------------|
| `pots_natural_history_prognosis.md` | Study-by-study evidence analysis, contradiction resolution, evidence quality grading, honest "what I couldn't find" |
| `pots_interventions_evidence_review.md` | 15-claim evidence ranking, treatment hierarchy by evidence strength, disconfirmation of 5 claims, self-audit checklist |
| `supplement_doublecheck_2026_02.md` | Product evaluation with COI analysis, sub-clinical dose detection, "better alternative" suggestions |
| `longevity_supplement_literature_review_2025_2026.md` | 9-compound literature review with bottom lines, summary evidence table, "what changes understanding" section |
| `ldn_pots_postcovid.md` | Drug evaluation — direct evidence, adjacent condition evidence, mechanism, practical details, probability framing |
| `phenotyping_protocol.md` | At-home phenotyping — tiered tests by effort/yield, equipment recommendations with prices, longitudinal tracking protocol |
| `biological_age_methodology.md` | PhenoAge calculation methodology — formula gotchas, unit conversions, validation approach |

---

## MCP Servers You'll Want

The research skills reference these MCP tools. Configure whichever you have access to:

| Server | What it does | Priority |
|--------|-------------|----------|
| **Semantic Scholar (`research`)** | Paper discovery, PDF download, full-text extraction, Gemini CAG querying | HIGH |
| **Exa** | Semantic web search — finds non-obvious connections, expert blogs, recent work | HIGH |
| **paper-search** | arxiv, PubMed, bioRxiv, medRxiv search | MEDIUM |
| **context7** | Library/API documentation lookup | LOW (for software, not health) |

Without MCP servers, the skills still work — they'll use WebSearch and WebFetch as fallbacks. But the research quality is significantly better with Semantic Scholar + Exa.

---

## Key Concepts

### Evidence Hierarchy (Bio/Medical)
1. Clinical guideline / consensus (NICE, WHO, CPIC)
2. Systematic review / meta-analysis
3. Well-powered RCT
4. Small / pilot RCT
5. Large observational / cohort
6. GWAS / genetic association
7. Animal model
8. In vitro / cell culture
9. Case report / expert opinion

**Never let 7-9 substitute for 1-6.** Say explicitly: "Mechanistic evidence only; no human clinical trial confirms this."

### Provenance Tags
Every claim gets tagged:
- `[SOURCE: url]` — Retrieved and read
- `[DATABASE: name]` — Queried reference database
- `[INFERENCE]` — Derived from evidence + assumptions
- `[TRAINING-DATA]` — From model training, not verified
- `[PREPRINT]` — Unreplicated preprint
- `[UNVERIFIED]` — Plausible but no source

### The Core Anti-Pattern
> LLMs will synthesize from training data and present it as research. The entire toolkit exists to prevent this. The research prompt makes verification structurally mandatory, not aspirational. Agents WILL skip optional verification. They WILL fabricate when pressured to be precise. The architecture must anticipate this.

---

## Customization

1. **Questionnaire 05** needs YOUR genomic variants — the template shows the pattern
2. **Rules frontmatter** (`paths:` in epistemics.md, research-depth.md) — adjust to match your project's directory structure
3. **Research runbook** references project-specific QA scripts — replace with your own or remove
4. **MCP tool routing** in researcher SKILL.md — covers many tools, will gracefully skip unavailable ones

---

*Built from real research sessions. Refined through failure.*
