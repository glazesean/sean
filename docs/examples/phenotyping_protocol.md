# At-Home Phenotyping Protocol for Personal Genomics

> Practical guide. Not medical advice.
> Date: 2026-02-28
> Scope: Body-surface observations, simple physical tests, and cheap tools that extract phenotype data connecting to WGS interpretation
> Context: For anyone with genomic data (WGS, WES, or consumer genotyping) who wants to connect variants to observable traits

---

## Insight vs. Effort Ranking

Tests ranked by *diagnostic/genetic signal per unit effort*. Do them in this order.

### Tier 1 — Trivial Effort, Direct Genotype Validation (10 min total)

These validate specific SNPs in a WGS dataset. Binary phenotypes, zero ambiguity.

| Test | Gene(s) | What to do | Expected yield |
|------|---------|------------|----------------|
| **PTC/PROP taste strips** | TAS2R38 (rs713598, rs1726866, rs10246939) | Place strip on tongue. Bitter = taster (PAV haplotype), nothing = non-taster (AVI). ~$8/100 strips | Direct 3-SNP haplotype validation. 75% of people are tasters |
| **Cilantro taste** | OR6A2 (rs72921001) | Eat fresh cilantro. Soapy = likely CC genotype | Single-SNP validation. ~15% of Europeans report soapy |
| **Earwax type** | ABCC11 (rs17822931) | Check right now. Wet/sticky = G allele (dominant). Dry/flaky = AA homozygote | Single-SNP. Also correlates with apocrine sweat/body odor type |
| **Asparagus urine smell** | Multiple loci near OR2M7 (rs4481887, rs2228224) | Eat asparagus, check urine 30 min later. Can the subject smell it? | Validates olfactory receptor cluster on chr1 |
| **Photic sneeze reflex** | rs10427255, rs11856995 (chr2, chr15) | Walk from dark room into bright sunlight. Sneeze? | ACHOO syndrome, ~25% prevalence, autosomal dominant pattern |
| **Alcohol flush** | ALDH2 (rs671), ADH1B (rs1229984) | Drink small amount of alcohol. Facial flushing within minutes? | Major pharmacogenomic variant. Near-zero in Europeans, ~36% East Asian |
| **Red hair / freckling** | MC1R (multiple variants) | Document natural hair color, freckling pattern under UV | MC1R variants = melanoma risk modifier |
| **Ishihara color plates** | OPN1LW, OPN1MW (Xq28) | Free online test, 2 minutes | X-linked color vision deficiency, 8% of males |

### Tier 2 — Low Effort, High Clinical Signal (30 min total)

| Test | What it reveals | Equipment | Protocol |
|------|----------------|-----------|----------|
| **Beighton score** (photograph 9 positions) | Joint hypermobility → connective tissue genes (COL5A1, COL3A1, TNXB, FBN1) | Camera + tripod/timer | 5th finger >90deg, thumb to forearm, elbow hyperextension >10deg, knee hyperextension >10deg, palms flat on floor. Score 0-9, >4 = hypermobile. **Photo each position** |
| **Palmar crease photography** | Single transverse palmar crease (STPC) = minor dysmorphic marker. Sydney line. Dermatoglyphic patterns | Camera | Both palms, fingers spread, good lighting. NOT palmistry — legitimate clinical sign associated with trisomies and some connective tissue variants |
| **Nail inspection** | Clubbing (cardiopulmonary), koilonychia (iron), Beau's lines (systemic illness), Terry's nails (liver/albumin), pitting (psoriasis), splinter hemorrhages | Camera + macro | All 10 fingers, dorsal view, profile view for Lovibond angle. Measure nail plate thickness if microscope available |
| **Sclera + iris photography** | Icterus (bilirubin), arcus senilis (lipid deposits), Kayser-Fleischer rings (Wilson's/copper), Brushfield spots, iris heterochromia | Camera, natural light + flash | Both eyes. Close-up with eyelid retracted. Natural light for color accuracy, flash for structural detail |
| **Tongue photography** | Geographic tongue (polygenic, linked to psoriasis), fissured tongue, coating patterns, macroglossia | Camera | Stick out tongue fully. Top, underside, both sides |
| **Capillary refill test** (video) | Peripheral perfusion, cardiovascular | Camera | Press nail bed firmly 5 sec → release → film refill. Normal <2 sec. Do all 10 fingers. Also test on sternum |
| **Dermographism scratch test** (video + serial photos) | Mast cell reactivity, histamine response | Blunt object (pen cap) | Scratch forearm with firm pressure. Photograph at 0, 5, 10, 15 min. White line = normal. Red wheal + flare = dermographic urticaria. Triple response of Lewis |

### Tier 3 — Moderate Effort, Meaningful Signal (1-2 hours)

| Test | What it reveals | Equipment needed | Cost |
|------|----------------|-----------------|------|
| **Nailfold capillaroscopy** | Microvascular architecture. Giant capillaries, hemorrhages, avascular areas → scleroderma, Raynaud's, connective tissue disease, diabetes microangiopathy | Phone + clip-on macro lens (60x) + drop of immersion oil on cuticle | ~$10-15 for lens. Validated: smartphone capillaroscopy performs comparably to clinical videocapillaroscopy for screening (Jee et al. 2021, ERJ Open Res; Patterson et al. 2020, Nightstar 60x lens sufficient) |
| **Mole mapping** | Baseline for melanoma screening, correlates with MC1R/CDKN2A variants | Phone + dermatoscope attachment ($25-50 basic) or DermLite DL5 ($1895 pro) | Map all body regions. Standardize: anterior trunk, posterior trunk, each limb, face. Include dermatoscopic view of any atypical nevi |
| **Wood's lamp (UV 365nm) full body survey** | Hidden pigmentation (vitiligo, tinea versicolor, ash leaf spots), porphyrin fluorescence, sun damage mapping | Wood's lamp $15-25 | Darken room completely. Systematic sweep head to toe. Photograph any fluorescent areas. Coral-red = erythrasma. Bright white = vitiligo. Blue-green = pseudomonas |
| **Blood smear microscopy** | RBC morphology (sickle cells, target cells, spherocytes, echinocytes, rouleaux), WBC differential, platelet estimate | USB microscope ($30-60) + Wright-Giemsa stain kit ($15) + lancets + slides | Prick finger, make thin smear, air dry, stain, examine at 40x and 100x (oil). Look for: poikilocytosis, anisocytosis, hypersegmented neutrophils (B12/folate), toxic granulation |
| **Hair shaft microscopy** | Pili torti, monilethrix, trichorrhexis nodosa, bubble hair → genetic and nutritional conditions | USB microscope | Pluck 5-10 hairs from different regions. Mount on slide. Examine shaft structure at 40-100x. Compare scalp hair, body hair, eyebrow |
| **Skin pinch turgor** (video) | Connective tissue elasticity, hydration status, Ehlers-Danlos screening | Camera + timer | Pinch skin on dorsum of hand, hold 3 sec, release, time to flatten. Also test forearm, neck. EDS: skin stretches >1.5cm on forearm. Document with ruler |
| **Cold provocation test** | Raynaud's phenomenon → connective tissue, vascular genes | Camera + bowl of ice water | Immerse hands in ice water 1 min. Photograph immediately on removal, then every 2 min for 10 min. Document: white (vasospasm) → blue (cyanosis) → red (reperfusion). Triphasic = Raynaud's |
| **Grip strength** | All-cause mortality predictor (strongest single physical measure), sarcopenia screening, neuropathy | Hand dynamometer ~$20 | 3 attempts each hand, best of 3. Normative data by age/sex available. Track longitudinally |

### Tier 4 — More Effort, Moderate Signal

| Test | What it reveals | Notes |
|------|----------------|-------|
| **Spirometry** | FEV1/FVC ratio, lung function baseline | Digital spirometer ~$25. Useful for longitudinal tracking. Technique-dependent |
| **Pulse oximetry protocol** | O2 carrying capacity, recovery kinetics | SpO2 at rest, after 1 min stair climb, recovery time to baseline. Cheap oximeters ~$15 |
| **Pupillary light response** (video) | Anisocoria, RAPD, sluggish response → neurological | Film in dim room, shine phone flashlight. Slow-mo video helpful |
| **Hearing screening** | Pure tone thresholds, presbycusis | Apps exist (e.g., hearWHO by WHO). Calibration questionable but tracks change |
| **Smell identification** | Anosmia/hyposmia → neurodegenerative early marker, OR gene variation | UPSIT $27, or DIY with 10 known household scents. Cinnamon, coffee, peppermint, lemon, etc. |
| **Frank's sign check** | Diagonal earlobe crease → cardiovascular risk | Photograph both ears in profile. Evidence is mixed (OR ~1.5-2.0 for CAD, confounded by age) |
| **Gum + teeth photography** | Gingival hyperplasia, recession, enamel hypoplasia (developmental), erosion patterns | Pull back lips, photograph upper and lower arches |

---

## Photography Protocol

### Standardized Lighting (pick 3 of 4)

| Mode | Setup | What it reveals |
|------|-------|----------------|
| **Diffuse natural** | Window, overcast day, no direct sun | True color baseline, pigmentation |
| **Direct flash** | Phone flash at 15-30 cm | Surface texture, blanching, elevation |
| **UV / Wood's lamp** (365nm) | Dark room, UV only | Fluorescence, hidden pigmentation, porphyrins, sun damage |
| **Polarized** (requires dermatoscope) | Cross-polarized mode | Subsurface structures, vascular patterns, pigment network |

### Body Part Checklist

For each region, shoot: overview + close-up + dermatoscopic/macro (if applicable)

- [ ] Both palms (fingers spread, flat surface)
- [ ] All 10 fingernails (dorsal + profile)
- [ ] All 10 nailfolds (with oil, macro lens)
- [ ] Both eyes (natural light: full face + close-up each eye)
- [ ] Both ears (profile view for Frank's sign, front for morphology)
- [ ] Tongue (top, underside, both lateral margins)
- [ ] Lips (closed + open, note any pigmented macules)
- [ ] Teeth and gums (upper + lower arches, retracted lips)
- [ ] Throat / tonsils (with flashlight, say "ahh")
- [ ] Both hands dorsal (for hair pattern, skin texture, veins)
- [ ] Scalp (part hair in 3 locations, photograph with flash)
- [ ] Representative moles/nevi (if dermatoscope available)
- [ ] Any unusual skin findings (rashes, hyperpigmentation, etc.)
- [ ] Hair samples under microscope (scalp, body, eyebrow)

### Equipment Tiers

| Budget | What to buy | Total cost |
|--------|------------|------------|
| **Minimal** (~$30) | PTC strips + DARKBEAM UV + cuticle oil | ~$30 |
| **Good** (~$120) | Above + APEXEL PhoneMicro5 + Camry dynamometer | ~$120 |
| **Serious** (~$250) | Above + Plugable USB microscope + Volu-Sol stain kit + Zacurate oximeter | ~$250 |
| **Clinical** ($2000+) | Above + DermLite DL5 ($1,895) | Professional-grade |

**On the DL5:** It's a professional dermatoscope. The variable polarization (scroll through depths) and 365nm UV are genuinely unique features not available in cheap attachments. For anyone doing serious longitudinal mole mapping or with melanoma risk factors (check MC1R in the WGS data), it pays for itself in avoided biopsies. For everything else in this protocol, the APEXEL + DARKBEAM covers 90% of use cases.

---

## Shopping Guide — Specific Products

All products US-available, mostly Amazon. Researched Feb 2026.

### 1. PTC Taste Strips

| Product | Price | Notes |
|---------|-------|-------|
| **Carolina Biological PTC Paper #174010** | $5.80/100 | Education gold standard. 30mcg/strip. The one used in genetics classrooms for decades. carolina.com |
| Precision Laboratories PTC Strips | ~$8/100 | Amazon. 4.6/5 rating. Same 30mcg dose. More convenient to buy |
| Eisco FSC1031 PTC Strips | ~$5/100 | Lab supply. Requires bulk minimum from some vendors |

**Buy:** Precision Laboratories on Amazon for one-click. Carolina Biological for the standard.

### 2. Phone Microscope / Macro Lens (for capillaroscopy + close-up)

| Product | Price | Mag | Key features |
|---------|-------|-----|-------------|
| **APEXEL PhoneMicro5 3-in-1 Kit** | ~$40 | 100x/150x/200x | Built-in 12 LED (white+yellow), UV 365nm, USB-C rechargeable, spring-clip mount. Reviewed: Gadgeteer (2024), Digital Camera World (2025). Does BOTH capillaroscopy AND microscopy |
| Generic 60x clip-on lens | ~$8-12 | 60x | Bare minimum for nailfold capillaroscopy. No lighting. Patterson et al. (2020) validated Nightstar 60x for NFC screening |

**Buy: APEXEL PhoneMicro5.** The built-in UV 365nm light means it partially replaces a Wood's lamp for small-area UV examination. Three interchangeable lenses cover capillaroscopy (100x) through hair/skin microscopy (200x). The $40 investment replaces what would otherwise be a $12 clip lens + $15 Wood's lamp + limited functionality.

**Gotcha:** Clip mount can interfere with phone buttons on some models. Test alignment before field use.

### 3. Wood's Lamp / UV Light

| Product | Price | Wavelength | Notes |
|---------|-------|-----------|-------|
| **DARKBEAM UV Flashlight (dual 365nm + 395nm)** | ~$14-18 | Both 365nm AND 395nm | Amazon. Zoomable, portable. **Two wavelengths in one device** — 365nm for fluorescence (fungal, bacterial, porphyrin), 395nm for skin lesion visualization. Best value |
| APEXEL PhoneMicro5 built-in UV | $0 (included) | 365nm | Single-level UV. Good for small area but not full-body survey |
| Kernel KN9000B | $349 | UVA + white light + 2x magnifier | Clinical grade. Overkill for home use |
| DermLite Lumio 2 | $995 | Cross-polarized + UV | Professional. Requires medical license at some vendors |

**Buy: DARKBEAM dual 365+395.** Covers both diagnostic wavelengths for under $20. Use for full-body UV survey. APEXEL's built-in UV handles close-up spot checks.

**CRITICAL GOTCHA:** Most cheap "UV flashlights" on Amazon are 395nm marketed as "UV" or "blacklight." 395nm produces visible purple light and much weaker fluorescence. **Verify 365nm** — it should look almost invisible to the eye with minimal purple glow. DARKBEAM specifically offers dual-wavelength models with clearly labeled modes.

### 4. USB Digital Microscope (blood smear, hair shaft)

| Product | Price | Mag | Notes |
|---------|-------|-----|-------|
| **Plugable USB2-MICRO-250X** | $59.95 | 60-250x | 6,500+ Amazon reviews. 2MP, LED ring with brightness control, gooseneck stand, USB-A + USB-C. Works as webcam on any OS. 2-year warranty. Best for slides |
| Opti-Tekscope OT-V1 | ~$40 | 50-250x | Cheaper alternative, fewer reviews. Works but less refined stand |
| AmScope DM756 | $200+ | Up to 11.2x (optical zoom) | Serious lab equipment. Only for regular blood work |

**Buy: Plugable 250x.** The gooseneck stand is essential for hands-free slide examination. Works with blood smears, hair mounts, nail clippings, skin scrapings. USB-C compatible with modern Macs.

**Note:** For capillaroscopy of nailfolds in vivo (on the finger), the APEXEL phone lens is better because it's handheld. The Plugable is for prepared slides.

### 5. Blood Smear Stain Kit

| Product | Price | Size | Notes |
|---------|-------|------|-------|
| **Volu-Sol Dip-Stain Kit** | $53 | 4 oz (125 mL) | Amazon. 4.5/5 (66 reviews). 3-step dip stain (fixative → eosin → methylene blue). 10-second per step. Designed for blood smears, bone marrow, cytology. Hundreds of slides per kit |
| Siemens RAL Diff-Quik | $354 | 3x 500mL | Clinical volume. Way too much for personal use |
| ENG Scientific Wright-Giemsa Quick Kit | $212 | 3x 475mL | Also clinical volume |

**Buy: Volu-Sol Dip-Stain.** Consumer-accessible size and price. Same Romanowsky staining chemistry as Diff-Quik. Dip-and-dunk, no timing precision needed.

### 6. Lancets + Slides

| Product | Price | Notes |
|---------|-------|-------|
| **Any 28-30 gauge sterile lancets** | ~$5/100 | Amazon or pharmacy. Diabetic lancets work fine. 30g = less painful |
| **AmScope glass slides (72-pack) + coverslips (100-pack)** | ~$8-10 | Amazon. Pre-cleaned, ground edges. Standard 25x75mm |

**Buy:** Whatever is cheapest and has good reviews. These are commodity items. Don't overpay.

### 7. Hand Dynamometer

| Product | Price | Range | Notes |
|---------|-------|-------|-------|
| **Camry Digital Hand Dynamometer** | ~$30 | 0-200 lbs / 0-90 kg | **Validated against Jamar gold standard** (Sánchez-Aranda et al. 2024; Panhale et al. 2025 J Hand Microsurg). LCD display, stores 19 users, shows weak/normal/strong by age+gender. Best value |
| Jamar Hydraulic (analog) | ~$250+ | 0-200 lbs | THE clinical gold standard. Not worth 8x the price for personal tracking |

**Buy: Camry.** Peer-reviewed validation. $30. Tracks 19 users. The Jamar is for clinics billing insurance.

### 8. Pulse Oximeter

| Product | Price | Accuracy | Notes |
|---------|-------|----------|-------|
| **Zacurate 500E-B** | ~$39 | SpO2 ±2.6%, HR ±2 BPM | Bluetooth, OLED, perfusion index (PI) display. MedGrade "Best Value" (85/100). Good enough for trend tracking |
| Masimo MightySat Medical | $299 | Gold standard SET technology | **Only FDA-cleared OTC pulse oximeter for medical use.** Bluetooth LE, OLED. If accuracy matters for a medical condition, this is it |
| Generic fingertip | ~$15-20 | Variable | Skip — unreliable readings at the margins where it matters |

**Buy: Zacurate 500E-B** for phenotyping and trend tracking. **Masimo MightySat** for anyone with a respiratory or cardiovascular condition who needs clinical-grade accuracy.

### 9. Phone Dermatoscope (for mole mapping)

| Product | Price | Polarization | Notes |
|---------|-------|-------------|-------|
| **IBOOLO DE-200** | ~$30-50 | Polarized | Universal clip, 6x real magnification, polarized LED. Budget option that actually works. iboolomedical.com |
| MoleScope | ~$49-79 | Cross-polarized | Purpose-built for mole tracking. Companion app. molescope.com |
| DermLite DL1 | ~$249 | Polarized + non-polarized | 15mm lens, MagnetiConnect for iPhone. Professional quality at entry-level price |
| **DermLite DL5** | $1,895 | **Variable polarization** + UV + PigmentBoost | The real deal. Scroll through polarization depths. 10x true magnification. For serious longitudinal mole mapping |

**Buy: IBOOLO DE-200 or MoleScope** for basic mole mapping. **DermLite DL5** only if MC1R variants flag melanoma risk in the WGS data — then it's a medical investment, not a gadget purchase.

### 10. Digital Spirometer (optional, Tier 4)

| Product | Price | Notes |
|---------|-------|-------|
| **Contec SP10** | ~$30-40 | Handheld, LCD, stores data. Amazon. Basic but functional for FEV1/FVC trending |
| MIR Spirobank Smart | ~$600+ | Bluetooth, clinical grade. Overkill |

**Buy: Contec SP10** for baseline spirometry. Technique-dependent — watch a tutorial first.

---

### One-Cart Amazon Order (~$200 for Tiers 1-3)

1. Precision Laboratories PTC taste strips — ~$8
2. APEXEL PhoneMicro5 3-in-1 Kit — ~$40
3. DARKBEAM dual 365nm/395nm UV flashlight — ~$15
4. Plugable USB2-MICRO-250X microscope — ~$60
5. Volu-Sol Dip-Stain Kit — ~$53
6. Sterile lancets 30g (100-pack) — ~$5
7. Glass slides + coverslips — ~$9
8. Camry Digital Hand Dynamometer — ~$30
9. Zacurate 500E-B pulse oximeter — ~$39

**Subtotal: ~$259**

### Also grab (pharmacy / grocery)

- Cuticle oil (any clear, for capillaroscopy immersion) — ~$3
- Fresh cilantro — ~$1
- Asparagus — ~$3

---

## Longitudinal Tracking Protocol

The real value of phenotyping isn't a one-time snapshot — it's **serial measurement over months/years** to correlate change rates with biological aging and interventions.

### What to Track (and Why)

| Measurement | Frequency | What change means | Correlates with |
|-------------|-----------|-------------------|-----------------|
| **Nailfold capillaries** | Every 3-6 months | Capillary loss/enlargement = microvascular damage progression | Diabetes control (HbA1c), autoimmune activity, cardiovascular risk |
| **Mole map** (dermatoscopic) | Every 6-12 months | New nevi, diameter change >20%, asymmetry shift | Melanoma risk, UV exposure cumulative dose |
| **Skin elasticity** (pinch test, multiple sites) | Every 6 months | Slower return = collagen degradation | Biological age, connective tissue health, UV damage |
| **Grip strength** | Monthly | Decline >10% over 6 months = red flag | Sarcopenia, neuropathy, overall morbidity/mortality |
| **Capillary refill time** | Every 3 months | Slowing = worsening peripheral perfusion | Cardiovascular fitness, autonomic function |
| **Spirometry** (FEV1) | Every 6 months | FEV1 declines ~25-30 mL/year in healthy adults. Faster = pathological | COPD, environmental exposure, aging acceleration |
| **Nail growth rate** | Continuous (mark nail with dot, measure weekly) | Slower growth = nutritional deficiency, systemic illness, aging | Thyroid function, zinc/biotin status, peripheral circulation |
| **Hair count** (fixed scalp area, macro photo) | Every 3 months | Miniaturization, density loss | Androgenetic alopecia (AR gene), telogen effluvium, nutritional |
| **Dermographism response** | Every 3-6 months | Change in wheal size/duration = mast cell reactivity shift | Histamine metabolism, antihistamine response, stress/inflammation |
| **Skin color** (inner upper arm = minimal UV site) | Every 3-6 months | Constitutive pigmentation shift = systemic (Addison's, hemochromatosis) | Iron, cortisol, melanin regulation |
| **Eye/sclera** | Every 6 months | Yellowing = liver/bilirubin, arcus progression = lipid accumulation | Hepatic function, lipid panel correlation |

### The Sun-Exposed vs. Protected Skin Aging Comparison

**The rate difference between photo-aged and intrinsically aged skin is a direct measure of environmental vs. genetic aging.**

| Site | UV exposure | What it represents |
|------|------------|-------------------|
| **Dorsal forearm** | High | Extrinsic (photo) aging — cumulative UV damage |
| **Inner upper arm** | Minimal | Intrinsic aging — closest to pure chronological/genetic aging |
| **Glans penis** (mucosal-type skin) | Zero UV | Intrinsic mucosal aging — different keratinization, different aging pathway |
| **Behind ear** | Moderate | Intermediate — some UV but less than face/hands |

**Protocol:** Same lighting, same camera distance, same time of day. Photograph all 4 sites on the same day. Repeat every 6 months. Over years, the *divergence rate* between sites reflects cumulative environmental damage vs. genetic aging baseline.

This connects to WGS through: telomere length genes (TERT, TERC, OBFC1), DNA repair (ERCC2, XPC), collagen metabolism (COL1A1, MMP1 promoter variants), and melanin/UV response (MC1R, IRF4, SLC45A2).

### What to Store

For each session:
- Date, time, recent sun exposure, current medications, supplements
- Standardized photos (same lighting, distance, device)
- Quantitative measurements (grip strength in kg, capillary refill in seconds, FEV1 in liters)
- Any subjective notes (energy level, skin condition, recent illness)

**Storage:** `data/phenotype/YYYY-MM-DD/` with a JSON metadata sidecar per session.

---

## Connecting Phenotype to WGS

### Direct Validators (check these SNPs against the observed phenotype)

| Phenotype test | Gene | Key variant(s) | How to check |
|---------------|------|----------------|-------------|
| PTC bitter taste | TAS2R38 | rs713598, rs1726866, rs10246939 | PAV = taster, AVI = non-taster |
| Cilantro soap taste | OR6A2 | rs72921001 | A allele = soapy perception |
| Earwax type | ABCC11 | rs17822931 | CC = dry, CT/TT = wet |
| Asparagus urine smell | OR2M7 region | rs4481887 | G allele = can smell |
| Photic sneeze | Near ZEB2 | rs10427255 | GWAS hit, moderate effect |
| Alcohol flush | ALDH2 | rs671 | A allele = flush (rare in Europeans) |
| Freckling | MC1R | Multiple (R151C, R160W, D294H) | Any variant = increased freckling + melanoma risk |
| Color vision | OPN1LW/MW | Xq28 structural variants | Ishihara test reveals functional status |
| Hair curliness | TCHH, WNT10A | rs11803731, rs121908120 | Straight/wavy/curly correlation |
| Eye color | HERC2/OCA2 | rs12913832 | GG = likely brown, AA = likely blue |
| Skin pigmentation | SLC24A5, SLC45A2, IRF4 | rs1426654, rs16891982, rs12203592 | Constitutive pigmentation prediction |
| Pain sensitivity | SCN9A, COMT | rs6746030, rs4680 | Can't easily test at home but connects to medication response |

### Phenotype-Guided Variant Interpretation

When a VUS (variant of uncertain significance) appears in a WGS dataset, phenotyping can tip the balance:

- **Joint hypermobility + connective tissue gene VUS** → supports pathogenicity
- **Slow capillary refill + cardiovascular gene VUS** → worth investigating
- **Abnormal nailfold capillaries + autoimmune gene variants** → early subclinical disease?
- **Rapid skin aging (sun-exposed vs. protected divergence) + DNA repair gene VUS** → functional impact

---

## What's NOT Worth Doing

| Test | Why skip |
|------|----------|
| **Genital photography** (beyond the aging comparison site) | No additional phenotype data beyond what mucosal skin aging provides |
| **Tonsil/throat close-up** | Acute findings only, no stable phenotypic signal |
| **Extensive palmistry features** (heart line, head line, etc.) | Only STPC and Sydney line have genetic associations. Everything else is pareidolia |
| **Self-auscultation without training** | Digital stethoscopes exist but interpretation requires clinical training. Get an echo instead |
| **Random selfies in different lighting** | Unstandardized photos have no diagnostic value. Follow the protocol or don't bother |

---

## Chronic Condition Monitoring (POTS / Fibro / MCAS)

For anyone who has or suspects a chronic condition like POTS, fibromyalgia, or mast cell activation syndrome (MCAS), the APEXEL + Wood's lamp transform from one-time phenotyping tools into **daily quantitative monitors**. The literature supports this — but nobody's done longitudinal self-tracking yet.

### Evidence Base

| Condition | Finding | Source |
|-----------|---------|--------|
| **Fibromyalgia** | Altered capillary density and increased tortuosity in nailfold capillaroscopy | Choi & Kim 2015, Korean J Intern Med. doi:10.3904/kjim.2015.30.4.531 |
| **Fibromyalgia** | Microcirculation abnormalities measurable by capillary microscopy + laser fluxmetry | Morf et al. 2004, Arthritis Res Ther. doi:10.1186/ar1459 |
| **Dysautonomia** | Significant microvascular abnormalities on capillaroscopy in autonomic dysfunction | Mumtaz et al. 2025, Biomedicines. doi:10.3390/biomedicines13051242 |
| **MCAS/EDS/POTS triad** | Mast cell disorders prevalent in Ehlers-Danlos; dermographism as direct MCAS marker | Seneviratne, Maitland & Afrin 2017, Am J Med Genet C |
| **Dermographism** | "Skin writometer" concept for quantifying provocation threshold | Godse et al. 2021, IP Indian J Clin Exp Dermatol. doi:10.18231/j.ijced.2021.035 |

### Daily 5-Minute Protocol

| Step | Time | Tool | What to measure |
|------|------|------|----------------------|
| 1. **Supine vitals** | 30 sec | Zacurate oximeter | SpO2 + HR baseline (before getting up) |
| 2. **Standing vitals** | 30 sec | Zacurate oximeter | SpO2 + HR after 1 min standing → orthostatic delta |
| 3. **Nailfold capillaroscopy** | 2 min | APEXEL 100x + cuticle oil | Photo + 10-sec video of ring finger nailfold (same spot daily) |
| 4. **Dermographism scratch** | 30 sec + 5 min wait | Pen cap + phone camera | Scratch inner forearm, photograph at 5 min. Measure wheal width |
| 5. **Symptom score** | 30 sec | Notes app / spreadsheet | Energy, pain, brain fog, GI, each 1-10 |

**Total: ~5 min active + 5 min wait for dermographism photo**

### Weekly Add-Ons (10 min)

| Test | Tool | What it tracks |
|------|------|---------------|
| **Grip strength** | Camry dynamometer | 3 attempts each hand. Decline correlates with flare severity, fatigue |
| **Capillary refill video** | Phone slow-mo (240fps) | Press thumbnail 5 sec, release, count frames to full color return |
| **Tongue photo** | APEXEL 100x | Coating thickness/color shifts with gut inflammation, dehydration |
| **Wood's lamp body survey** | DARKBEAM 365nm | Porphyrin fluorescence map (skin microbiome), pigmentation changes |

### What to Measure in Nailfold Capillaroscopy

Use the same finger (ring finger, non-dominant hand) at the same position every time. Mark the spot with a tiny pen dot on the cuticle for consistency.

| Metric | How to assess | What change means |
|--------|--------------|-------------------|
| **Capillary density** | Count loops per mm along the nailfold edge | Decrease = microvascular dropout (worsening) |
| **Loop morphology** | Classify each: normal hairpin / tortuous / giant / bushy | Giant loops + hemorrhages = active damage |
| **Avascular areas** | Count gaps where capillaries should be | Progressive loss = small vessel disease |
| **Microhemorrhages** | Dark dots/smudges near capillary loops | Acute capillary injury, correlates with flare |
| **Flow dynamics** | Video at 60fps — look for intermittent flow vs continuous | Intermittent = vasospasm, consistent with dysautonomia |

### Dermographism Scoring

Standardize the scratch: same pen cap, same forearm location, same pressure (firm but not painful), same 10 cm line.

| Metric | How to measure | Normal | MCAS flare |
|--------|---------------|--------|------------|
| **Wheal width** | mm at widest point, photo at 5 min | 0-2 mm | >3 mm |
| **Flare diameter** | mm of surrounding erythema | 0-5 mm | >15 mm |
| **Duration** | Time until wheal is no longer palpable | <10 min | >30 min |
| **Color** | White (normal) vs red (dermographic urticaria) | White line | Red raised wheal |

### Correlation Dashboard

The power is in **multi-signal correlation over time.** After 30-60 days:

| Signal A | x Signal B | What the correlation reveals |
|----------|-----------|------------------------------|
| Dermographism wheal size | Food diary | Which foods trigger mast cell activation |
| Capillary density | Symptom severity score | Whether microvascular changes predict flares |
| Orthostatic HR delta | Capillary refill time | Autonomic dysfunction severity tracking |
| Grip strength | Energy score | Objective vs subjective fatigue alignment |
| Nailfold morphology | Weather / barometric pressure | Environmental triggers |
| Dermographism | Menstrual cycle day | Hormonal influence on mast cell reactivity |
| All metrics | Sleep quality (wearable data) | Sleep as upstream driver |

**What doesn't exist in the literature:** Longitudinal intra-individual microvascular + mast cell tracking correlated with daily symptom diaries in POTS/fibro/MCAS. The cross-sectional studies (sick vs. healthy snapshots) exist. The time series doesn't. This protocol would generate novel data.

### Storage Schema

```
data/phenotype/
├── YYYY-MM-DD/
│   ├── metadata.json          # date, time, meds, supplements, sleep, weather
│   ├── nailfold_photo.jpg     # standardized capillaroscopy image
│   ├── nailfold_video.mp4     # 10-sec flow dynamics
│   ├── dermographism_5min.jpg # wheal photo at 5 minutes
│   ├── woodslamp/             # UV survey photos (weekly)
│   └── measurements.json      # SpO2, HR, grip, capillary refill, symptom scores
```

---

## Sources

### Capillaroscopy & Smartphone Methods
- Jee AS et al. (2021) Nailfold capillaroscopy by smartphone-dermatoscope for CTD diagnosis. ERJ Open Res. [PMC8573234]
- McKay GN et al. (2020) Blood cell contrast in nailfold capillaries with mobile phone microscopy. Biomed Opt Express. [PMC7173903]
- Berks M et al. (2020) Comparison between low cost USB nailfold capillaroscopy and videocapillaroscopy. Rheumatology. [PMC8328506]
- Patterson KA et al. (2020) Nailfold capillaroscopy using smartphone technology. CSIRO/Flinders.
- Meltzer M (2019) Screening nailfold capillaroscopy using a jeweler's loupe. JAAD.
- Ma Z et al. (2023) Methods of assessing NFC vs videocapillaroscopy in SSc: critical review. Diagnostics. doi:10.3390/diagnostics13132204

### Chronic Conditions & Microvascular
- Choi D, Kim HS (2015) Quantitative analysis of nailfold capillary morphology in fibromyalgia. Korean J Intern Med. doi:10.3904/kjim.2015.30.4.531
- Morf S et al. (2004) Microcirculation abnormalities in fibromyalgia by capillary microscopy and laser fluxmetry. Arthritis Res Ther. doi:10.1186/ar1459
- Mumtaz S et al. (2025) Significant microvascular abnormalities in autonomic nervous system dysfunction. Biomedicines. doi:10.3390/biomedicines13051242
- Seneviratne SL, Maitland A, Afrin L (2017) Mast cell disorders in Ehlers-Danlos syndrome. Am J Med Genet C.
- Godse K et al. (2021) Skin writometer: assessing provocation threshold in symptomatic dermographism. IP Indian J Clin Exp Dermatol. doi:10.18231/j.ijced.2021.035

### Skin Aging & Longitudinal Imaging
- Pena AM et al. (2022) In vivo multiphoton 3D quantification of human skin aging. Sci Rep. doi:10.1038/s41598-022-18657-z

### Product Validation
- Sánchez-Aranda L et al. (2024) Reliability and criterion validity of the Camry handgrip dynamometer. medRxiv. doi:10.1101/2024.06.25.24309304
- Panhale V et al. (2025) Reliability and validity of Camry dynamometer in healthy Indian adults. J Hand Microsurg. doi:10.1016/j.jham.2025.100291

### Genetics & Phenotyping
- yourgenome.org Characteristics Guide (PTC, ABCC11, MC1R trait-gene mappings)
- learn.genetics.utah.edu PTC genetics reference
- Weinberg SM et al. (2006) Minor physical anomalies in schizophrenia: meta-analysis. Schizophr Res. [PMC2666162]
- Wang XY et al. (2022) MPA prediction tool for schizophrenia. Sci Rep. [PMC: 35210439]

### UV/Wood's Lamp
- PMC9239119 (2022) Revealing the unseen: review of Wood's lamp in dermatology. JCAD.
- StatPearls: Wood's Light. NCBI Bookshelf NBK537193.

---

*Last updated: 2026-02-28*
