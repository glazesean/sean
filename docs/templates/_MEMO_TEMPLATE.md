# <Title>

> Research memo. Not medical advice.
> Date: YYYY-MM-DD
> Scope: <what this memo covers>
> Context: <user-specific context that matters>

---

## Decision Claims (Top 5–15)

<!-- Cruft budget: default max 15 rows. Override with a comment: <!-- max_claims: 25 --> if topic demands it. -->

| Claim | Direction + magnitude | Evidence grade (1–9) | Population match | Citation IDs | Status |
|---|---|---:|---|---|---|
| <1-sentence claim> | <what changes, which direction, effect size if known> | | <good/partial/poor> | <DOI/PMID/NCT> | `verified`/`unverified`/`inference`/`contradicted` |

For pharmacology claims: state the moiety (parent vs metabolite), the variable (AUC/Cmax/effect), and the sign for each causal step.

---

## Ground Truth

- Local files/data checked:
- Prior memos relevant:
- What was already known before external search:

---

## Key Findings

- Finding 1 (with citation + confidence + limitations)
- Finding 2 …

---

## Inferences (if any)

<!-- Any gene-gene interaction, pathway narrative, or mechanistic chain goes HERE, not in Key Findings. -->

- Inference:
  - Assumptions:
  - What would falsify it:
  - Biggest failure mode:

---

## Disconfirmation Log

- Hypothesis:
  - What evidence contradicted it:
  - What was unresolved:

---

## Verification Log

- Claims verified via tool lookup: N
- Claims still unverified: N
- Corrections applied: <short list>
- QA: `uv run python scripts/verify_citation_ids.py <this file> --fail-on-unverified`

---

## Search Log

| Query | Tool | Result |
|---|---|---|
|  |  |  |

---

## Appendix (Optional)

- Evidence dump / extra notes (max ~10 product/practical bullets)

