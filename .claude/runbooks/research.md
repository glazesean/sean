# Runbook: Research

Procedures for conducting research and writing research memos. For prompt templates to paste into subagent context, see `docs/RESEARCH_PROMPT.md` (general) and `docs/RESEARCH_PROTOCOL.md` (bio/medical).

## When to Use This

Any task that produces claims requiring evidence:
- Literature reviews, evidence synthesis, deep dives
- Genomics interpretation, supplement evaluation
- Entity file updates with sourced claims

## Research Workflow

1. **Ground truth audit** — check what already exists locally before searching
   ```bash
   ./selve search "topic" -s git,chatgpt,claude -k 10
   ```
2. **Exploratory divergence** — cast a wide net across multiple search axes
3. **Hypothesis formation** — form falsifiable claims
4. **Disconfirmation** (mandatory) — actively search for contradictory evidence
5. **Claim-level verification** — verify every number, name, citation
6. **Synthesis** — grade evidence, tag confidence, separate evidence from inference

## Research Tools

| Tool | Best For |
|------|----------|
| `research` MCP: `search_papers` | Semantic Scholar discovery |
| `research` MCP: `fetch_paper` | PDF download + full text extraction |
| `research` MCP: `ask_papers` | CAG over full-text papers (Gemini 1M context) |
| `paper-search` MCP | arxiv, PubMed, biorxiv, medrxiv search |
| `exa` MCP | Semantic web search (non-obvious connections) |
| PubMed via WebFetch | Short keyword queries (2-4 terms) |

## Memo Contract

Research memos go in `docs/research/`. Required sections for claim-heavy memos:

1. **Decision Claims (Top 5-15)** — table: claim, evidence grade, population, citation IDs, status tag
2. **Ground Truth** — what was known locally before searching
3. **Key Findings** — minimum findings explaining the decision claims
4. **Disconfirmation Log** — adversarial evidence, what didn't pan out
5. **Verification Log** — verified vs unverified, corrections made
6. **Search Log** — queries + tools (reproducible)

Optional: Appendix for evidence dump, product/pricing, protocols.

## QA Before Shipping

```bash
# Check memo has contract sections
uv run python scripts/audit_research_memo_contract.py docs/research/<memo>.md

# Extract citation IDs
uv run python scripts/extract_citation_ids.py docs/research/<memo>.md

# Verify citations resolve
uv run python scripts/verify_citation_ids.py docs/research/<memo>.md
```

## Evidence Hierarchy (Bio/Medical)

Grade every claim (1 = strongest, 9 = weakest):

1. Clinical guideline / consensus (NICE, WHO, CPIC, DPWG)
2. Systematic review / meta-analysis
3. Well-powered RCT (pre-registered, independent)
4. Small / pilot RCT
5. Large observational / cohort
6. GWAS / genetic association
7. Animal model
8. In vitro / cell culture
9. Case report / expert opinion

Key rules:
- Never let (7-9) substitute for (1-6)
- Always note: conflicts of interest, replication status, sample size, population match
- INFERENCE must be labeled and separated from EVIDENCE

## Epistemic Rules

See `.claude/rules/epistemics.md` and `.claude/rules/research-depth.md` for full rules. Key principles:
- Go to primary sources — don't synthesize from training data
- Every non-trivial factual claim needs a resolvable citation
- Never invent paper titles, authors, or numbers
- "I cannot locate a primary source" is always acceptable

## Good Examples

- `docs/research/pots_natural_history_prognosis.md` — explicit priors + evidence grades
- `docs/research/supplement_doublecheck_2026_02.md` — disconfirmation + verification + search logs
