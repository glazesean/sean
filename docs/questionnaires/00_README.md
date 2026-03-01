# Medical Questionnaires

Six questionnaire files designed to build a comprehensive health phenotype for AI-assisted health research.
Answer via audio transcription — rambling/freeform is fine.

## Files

| # | File | Time | Priority | What it covers |
|---|------|------|----------|---------------|
| 01 | `01_family_and_medical_history.md` | 15-20 min | **HIGH** | Family history, medical timeline, medications, surgeries |
| 02 | `02_current_symptoms.md` | 15-20 min | **HIGH** | System-by-system symptom inventory |
| 03 | `03_psychiatric_and_cognitive.md` | 10-15 min | **HIGH** | Psychiatric phenotype, cognitive function |
| 04 | `04_lifestyle_and_environment.md` | 10 min | MEDIUM | Diet, exercise, sleep habits, substances, work |
| 05 | `05_genotype_phenotype_validation.md` | 10 min | MEDIUM | Do genetic predictions match reality? (fill in YOUR variants) |
| 06 | `06_standardized_tests.md` | 30-45 min | **HIGH** | Online validated scales (PHQ-9, GAD-7, ISI, COMPASS-31, etc.) |

## Why This Matters

If you have genomic data (WGS, WES, or even consumer genotyping), the variants are
uninterpretable without phenotype. PRS percentiles, carrier states, and variant
classifications only become meaningful when matched against your actual symptoms,
family history, and lived experience.

**Common gaps that block interpretation:**
1. **Family history** — needed to interpret every genetic finding, especially rare variants
2. **Psychiatric phenotype** — if you have elevated psychiatric PRS, clinical anchoring is essential
3. **Autonomic symptoms** — if investigating dysautonomia/POTS
4. **Inflammatory pattern characterization** — if labs show immune dysregulation
5. **Medication responses** — PGx findings need drug response history
6. **Standardized measures** — quantifiable baseline for tracking interventions

## How to Use

1. Open a questionnaire file
2. Record audio answering the questions (skip any you don't want to answer)
3. Transcribe and save the responses (Claude can help clean up transcriptions)
4. The standardized tests (file 06) should be taken online and scores recorded

Priority order: 01 → 02 → 06 → 03 → 04 → 05

## Customization

These questionnaires are templates. Before using them:
- **File 01**: Add your own rare variant questions (the template shows the pattern)
- **File 05**: Replace the example PGx/PRS entries with YOUR actual variants
- **File 06**: All standardized tests are generic — use as-is
