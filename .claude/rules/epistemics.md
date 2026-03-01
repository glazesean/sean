---
paths:
  - "docs/research/**"
  - "docs/entities/**"
  - "docs/active_protocol.md"
  - "docs/personal_wgs_current_takeaways.md"
---

# Epistemics Rules

Loaded when writing research memos, entity files, or protocol documents.

## Evidence Hierarchy (Bio/Medical)

1. Systematic reviews / meta-analyses of RCTs
2. Individual RCTs (large, well-designed)
3. Observational studies (cohort, case-control)
4. Case series / case reports
5. Expert opinion / mechanistic reasoning
6. In vitro / animal studies (not directly applicable to human dosing)
7. AI training data (ungraded, treat as hypothesis-generating only)

**Genomics-specific:**
- ClinVar Pathogenic/Likely Pathogenic with review status ≥2 stars = [B2]
- Single submitter ClinVar = [C3] (often reclassified)
- gnomAD frequency alone is not clinical evidence
- PRS percentiles are population-relative, not absolute risk

## Counterfactual Generation

Before concluding any analysis, ask:
- "What would change my mind?"
- "What evidence would I expect to see if I'm wrong?"
- "Is there a simpler explanation I haven't considered?"

If you cannot name a falsifying observation, you don't have a hypothesis — you have a belief.

## Self-Grading

After writing analysis, grade your own output:
- What percentage of claims are `[SOURCE]` or `[DATABASE]` vs `[TRAINING-DATA]`?
- If >50% of claims are `[TRAINING-DATA]` or `[UNVERIFIED]`, the analysis needs more research before delivery.
- For genomics claims specifically: every variant classification must trace to ClinVar, gnomAD, or a published paper.

## Mathematical Claims

When making quantitative claims (ORs, RRs, p-values, effect sizes):
- State the study design (RCT vs observational vs meta-analysis)
- State N and population
- Distinguish absolute vs relative risk reduction
- For genomics: report allele frequency, penetrance estimates, and confidence intervals when available
