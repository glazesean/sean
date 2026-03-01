# Research Memos (`docs/research/`)

Purpose: store **auditable** deep-dive memos that can later be safely distilled into higher-level docs (e.g., `docs/active_protocol.md`, claim ledgers).

## Memo Contract (Recommended Default)

If the memo is “claim-heavy” (science/medical/genomics/supplements), include these sections:

1. `## Decision Claims (Top 5–15)` — table with claim → evidence grade → population → citation IDs → status tag
2. `## Ground Truth` — what was known locally before searching (files/data already in repo)
3. `## Key Findings` — the minimum set of findings that explain the decision claims
4. `## Disconfirmation Log` — adversarial/negative evidence and what didn’t pan out
5. `## Verification Log` — what was verified vs unverified (and what you corrected)
6. `## Search Log` — queries + tools (enough to reproduce the result)

Optional:
- `## Appendix` — evidence dump, product/pricing notes, celebrity protocols (strict budget)

## QA Commands (Run Before “Shipping” Conclusions)

```bash
# 1) Check the memo has the contract sections
uv run python scripts/audit_research_memo_contract.py docs/research/<memo>.md

# 2) Extract citation IDs (helps prevent citation drift)
uv run python scripts/extract_citation_ids.py docs/research/<memo>.md

# 3) Verify citation IDs resolve (existence check, not claim correctness)
uv run python scripts/verify_citation_ids.py docs/research/<memo>.md
```

## Good Examples

- `docs/research/pots_natural_history_prognosis.md` — explicit priors + evidence grades + careful interpretation
- `docs/research/supplement_doublecheck_2026_02.md` — includes disconfirmation + verification + search logs

