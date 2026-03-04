---
paths:
  - "docs/**"
  - "derived/**"
---

# Research Depth Protocol

These rules load when writing to docs/ or derived/ files.

## Depth Decision Tree

Route research effort by stakes:

**HIGH** (genomics findings that change protocol, drug interactions, diagnostic conclusions):
- Fetch and read at least one primary source (paper full text via `fetch_paper` + `read_paper`, or ClinVar/gnomAD query)
- Run one disconfirmation search (`"X criticism"`, `"X failed"`, `"X negative results"`)
- Self-grade all claims before writing
- Run `verify_citation_ids.py` before promoting to `active_protocol.md`

**MEDIUM** (entity updates, research memos, derived analyses):
- At least one primary source OR one database query — no pure training-data synthesis
- One disconfirmation query

**LOW** (session notes, brainstorming, scratch work):
- Training data OK if labeled `[TRAINING-DATA]`
- No source obligations

## Primary Source Obligation

Before citing a paper, fetch and read it (`fetch_paper` → `read_paper`). Abstracts are not primary sources.
Before citing a variant finding, query ClinVar/gnomAD. Memory of a classification is not a source.
Before citing a drug interaction, check primary literature. "I recall reading..." is not a source.

## Source-Grade-on-Write

Every factual claim written to docs/ must have provenance:
- `[SOURCE: url/DOI]` — fetched and read the primary source
- `[DATABASE: ClinVar/gnomAD/CPIC]` — queried the reference database
- `[DATA]` — our own analysis (embedding search, pipeline output)
- `[INFERENCE]` — derived from sourced premises, reasoning shown
- `[TRAINING-DATA]` — from model training, not independently verified
- `[UNVERIFIED]` — plausible but no source found

## Diminishing Returns Gate

Stop deepening and start writing when:
1. **Source convergence**: Two independent sources agree and no contradictions found
2. **Marginal yield**: Last research action added no new information
3. **Scope creep**: Research is expanding laterally instead of resolving the original question

## Evidence Base

These rules are grounded in empirical findings, not aspirational:
- Instructions alone = 0% consistent success without architectural scaffolding (EoG, arXiv:2601.17915)
- Documentation helps only for novel domain knowledge, not known APIs (Agent-Diff, arXiv:2602.11224)
- Agent consistency is flat over 18 months despite capability gains (Princeton, arXiv:2602.16666)
