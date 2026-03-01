# How to Calculate PhenoAge from Blood Panels

**Method:** PhenoAge (Levine et al. 2018, Aging 10(4):573-591)

PhenoAge estimates biological age from 9 routine blood biomarkers plus chronological age. It was trained on NHANES III mortality data (N=9,926) and validated in NHANES IV (N=6,209). The model predicts 10-year mortality, which is then converted to an age equivalent.

## Required Biomarkers

The model requires exactly these 9 markers (plus chronological age):

| Marker | Units (model expects) | Common Lab Units | Conversion |
|--------|-----------------------|------------------|------------|
| Albumin | g/L | g/dL | multiply by 10 |
| Creatinine | umol/L | mg/dL | multiply by 88.4 |
| Glucose | mmol/L | mg/dL | divide by 18.0 |
| C-reactive protein (CRP) | mg/dL | mg/L | divide by 10 |
| Lymphocyte % | % | % | none |
| Mean corpuscular volume (MCV) | fL | fL | none |
| Red cell distribution width (RDW) | % | % | none |
| Alkaline phosphatase (ALP) | U/L | U/L | none |
| White blood cell count (WBC) | k/uL (10^3/uL) | k/uL | none |

## Formula Corrections Applied

These are critical implementation gotchas discovered through debugging. The initial naive implementation produced an impossible result (PhenoAge far below zero). Root cause investigation revealed three categories of error:

### 1. Wrong units

The Levine 2018 coefficients expect SI units for albumin, creatinine, and glucose. Many lab reports use conventional US units. If you feed mg/dL creatinine into a model expecting umol/L, the result will be wildly wrong with no error or warning.

- **Albumin:** coefficients expect g/L (not g/dL). A value of 4.5 g/dL must be entered as 45 g/L.
- **Creatinine:** coefficients expect umol/L (not mg/dL). A value of 1.0 mg/dL must be entered as 88.4 umol/L.
- **Glucose:** coefficients expect mmol/L (not mg/dL). A value of 100 mg/dL must be entered as 5.56 mmol/L.

### 2. Wrong log transforms

Only CRP should be log-transformed (natural log). A common mistake is to also log-transform creatinine, glucose, RDW, or WBC. These are passed as raw values.

The linear predictor uses `ln(CRP)` but raw values for all other biomarkers.

### 3. CRP unit confusion

This is the subtlest error. European/Austrian labs typically report CRP in **mg/L** with a reference range of <5 mg/L. The NHANES training data uses **mg/dL**. These differ by a factor of 10.

- Lab reports: CRP = 0.4 mg/L
- Model input: CRP = 0.04 mg/dL (divide by 10, then take ln)

At low CRP values (healthy individuals), this 10x error has an outsized effect because `ln(0.4)` vs `ln(0.04)` is a large difference.

### Validation

To verify your implementation, use this reference case for a typical 50-year-old:

| Marker | Value |
|--------|-------|
| Age | 50 years |
| Albumin | 42 g/L |
| Creatinine | 88.4 umol/L |
| Glucose | 5.5 mmol/L |
| CRP | 0.25 mg/dL |
| Lymphocyte % | 27% |
| MCV | 90 fL |
| RDW | 13.2% |
| ALP | 72 U/L |
| WBC | 7 k/uL |

Expected PhenoAge: approximately 48.7 years. If your result is far from this, check unit conversions first.

## Biomarker Contribution Structure

Each biomarker has a coefficient in the linear predictor. The contribution of each marker is the product of (coefficient x value), relative to the population mean. The sign tells you the direction:

**Markers that push younger (negative contribution = good):**
- **High albumin** — the single strongest "youth" signal. Albumin above ~48 g/L provides large negative contribution.
- **Low CRP** — very low CRP (near-undetectable inflammation) is a strong youth driver. Since CRP is log-transformed, the difference between 0.04 and 0.5 mg/dL is substantial.
- **High lymphocyte %** — reflects robust adaptive immunity.

**Markers that push older (positive contribution):**
- **RDW** — has the largest coefficient (0.3306), so even normal-range values (11.5-14.5%) contribute substantially in the "older" direction. This is a feature of the model, not necessarily a clinical concern at normal levels.
- **MCV** — higher values push older. Values in the 80s are favorable.
- **Glucose, creatinine** — higher values push older, as expected.
- **WBC** — higher counts push older (inflammation signal).
- **ALP** — higher values push older (liver/bone).

**Key insight:** RDW dominates the "older" direction even at normal values because of its large coefficient. Don't be alarmed by a large positive RDW contribution if the actual value is within reference range.

## Practical Limitations

### Panel completeness

PhenoAge requires all 9 markers simultaneously. Many standard blood panels are missing 1-3 markers (lymphocyte differential, RDW, or ALP are commonly omitted). If any marker is missing, PhenoAge cannot be calculated for that panel. Request a CBC with differential plus a comprehensive metabolic panel to ensure coverage.

### CRP sensitivity at low values

Standard CRP assays (reference range <5 mg/L) lack precision below ~1 mg/L. For individuals with genuinely low inflammation, a high-sensitivity CRP (hsCRP, reference range <1 mg/L) provides much better resolution and therefore a more accurate PhenoAge.

## Untested Markers That Would Improve Assessment

These markers are not part of PhenoAge but would substantially improve any biological age assessment:

| Marker | Why Important |
|--------|--------------|
| hsCRP | Standard CRP (ref <5 mg/L) lacks precision at low values. hsCRP (ref <1 mg/L) gives better PhenoAge at these levels |
| HbA1c | 3-month glycemic average — more reliable than fasting glucose |
| ApoB | Better cardiovascular risk marker than LDL-C (LDL particle count > cholesterol content) |
| Cystatin C | Kidney aging marker independent of muscle mass (creatinine is confounded by body composition) |
| IGF-1 | Growth hormone axis — connects to sleep quality and neuroendocrine function |
| DHEA-S | Adrenal aging marker, declines ~2% per year from age 25 |
| Homocysteine | Methylation/B-vitamin status, cardiovascular risk |
| Fasting insulin | Insulin resistance marker (HOMA-IR calculation requires both fasting insulin and glucose) |

## References

- Levine ME, Lu AT, Quach A, et al. An epigenetic biomarker of aging for lifespan and healthspan. *Aging*. 2018;10(4):573-591. doi:10.18632/aging.101414
