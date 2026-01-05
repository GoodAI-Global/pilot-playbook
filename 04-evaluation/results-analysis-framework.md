# Results Analysis Framework

> "Results don't speak for themselves. They need rigorous analysis and honest interpretation."

## Purpose

This framework provides a structured approach to analyzing pilot results that:
- Objectively assesses what happened
- Determines if results are statistically meaningful
- Attributes outcomes to the intervention (not external factors)
- Supports clear go/no-go recommendations

---

## Analysis Process Overview

| Phase | Duration | Activities |
|-------|----------|------------|
| 1. Data Validation | 1-2 days | Verify data quality and completeness |
| 2. Descriptive Analysis | 1-2 days | Summarize what happened |
| 3. Statistical Analysis | 2-3 days | Test significance and confidence |
| 4. Causal Analysis | 1-2 days | Attribution and confound check |
| 5. Interpretation | 1 day | Meaning and implications |
| 6. Documentation | 1 day | Final report |

---

## Phase 1: Data Validation

Before analysis, verify data integrity.

### Validation Checklist

| Check | Query/Method | Expected | Actual | Status |
|-------|--------------|----------|--------|--------|
| Record count | COUNT(*) | [Expected N] | | ⬜ |
| Date range coverage | MIN/MAX date | [Start - End] | | ⬜ |
| Missing values | NULL counts | <5% critical fields | | ⬜ |
| Duplicate records | Duplicate check | 0 duplicates | | ⬜ |
| Value ranges | MIN/MAX/AVG | Within expected | | ⬜ |
| Cross-reference | Join to source | 100% match | | ⬜ |

### Data Quality Assessment

```markdown
## Data Quality Report

**Analysis Period:** [Start Date] to [End Date]

**Records Analyzed:** [N]

**Completeness:**
- Primary metric data: [X]% complete
- Secondary metric data: [X]% complete
- Required covariates: [X]% complete

**Quality Issues Identified:**
1. [Issue] - Impact: [Low/Medium/High] - Handling: [How addressed]
2. [Issue] - Impact: [Low/Medium/High] - Handling: [How addressed]

**Data Excluded:**
- [Reason]: [N] records ([X]%)
- [Reason]: [N] records ([X]%)

**Conclusion:** Data quality is [Sufficient / Marginal / Insufficient] for analysis.
```

---

## Phase 2: Descriptive Analysis

### Summary Statistics

```markdown
## Descriptive Statistics

### Primary Metric: [Name]

| Period | N | Mean | Median | Std Dev | Min | Max |
|--------|---|------|--------|---------|-----|-----|
| Baseline | | | | | | |
| Pilot | | | | | | |
| Change | | | | | | |

### Distribution Comparison

[Histogram or density plot comparing baseline vs pilot distributions]

### Time Series View

[Line chart showing metric over time with baseline period and pilot period marked]

### Segmented Analysis

| Segment | Baseline | Pilot | Change | Change % |
|---------|----------|-------|--------|----------|
| [Segment 1] | | | | |
| [Segment 2] | | | | |
| [Segment 3] | | | | |
| Overall | | | | |
```

### Volume Analysis

```markdown
## Volume Metrics

| Measure | Baseline | Pilot | Change |
|---------|----------|-------|--------|
| Total volume | | | |
| Daily average | | | |
| Peak day | | | |
| Eligible for AI | | | |
| Processed by AI | | | |
| Coverage rate | | | |
```

---

## Phase 3: Statistical Analysis

### Significance Testing

#### For Continuous Metrics

```markdown
## Statistical Significance Test

**Metric:** [Name]
**Test Used:** [Two-sample t-test / Welch's t-test / Mann-Whitney U]

**Hypotheses:**
- H₀: μ_pilot = μ_baseline (no difference)
- H₁: μ_pilot ≠ μ_baseline (difference exists)

**Test Parameters:**
- Baseline: n=[N], mean=[X], std=[S]
- Pilot: n=[N], mean=[X], std=[S]
- Significance level: α = 0.05

**Results:**
- Test statistic: [value]
- p-value: [value]
- Effect size (Cohen's d): [value]

**Interpretation:**
- Significant at α=0.05: [Yes/No]
- Effect size: [Small (<0.2) / Medium (0.2-0.8) / Large (>0.8)]

**Conclusion:** [Interpretation of what this means for the pilot]
```

#### For Proportions/Rates

```markdown
## Proportion Comparison Test

**Metric:** [Rate or proportion]
**Test Used:** [Chi-square / Two-proportion z-test]

**Data:**
| Period | Successes | Total | Rate |
|--------|-----------|-------|------|
| Baseline | | | |
| Pilot | | | |

**Results:**
- Test statistic: [value]
- p-value: [value]
- 95% CI for difference: [[lower], [upper]]

**Interpretation:**
[What does this mean?]
```

### Confidence Intervals

```markdown
## Confidence Intervals

**Primary Metric Improvement:**
- Point estimate: [X]%
- 95% CI: [[lower]%, [upper]%]
- Interpretation: We are 95% confident the true improvement is between [lower]% and [upper]%

**Visualization:**
[Forest plot or error bar chart showing estimate and CI]

**Implications:**
- CI includes target: [Yes/No]
- CI includes zero: [Yes/No] — If yes, cannot rule out no effect
- CI width: [Narrow/Wide] — [Implications for precision]
```

### Power Analysis (Post-Hoc)

```markdown
## Power Analysis

**Question:** Did we have enough data to detect a meaningful effect?

**Parameters:**
- Sample size: [N]
- Effect size observed: [d]
- Significance level: α = 0.05

**Achieved Power:** [X]%

**Interpretation:**
- Power ≥ 80%: Sufficient — can trust null result
- Power < 80%: Insufficient — null result may be false negative

**If inconclusive, sample size needed for 80% power:** [N]
```

---

## Phase 4: Causal Analysis

### Attribution Assessment

```markdown
## Causal Attribution Analysis

**Question:** Can we attribute the observed results to the AI intervention?

### Comparison Method Used

☐ **Randomized A/B Test** (Strongest)
- Treatment assignment: Random
- Confounds controlled: Yes
- Attribution confidence: High

☐ **Before/After Comparison** (Moderate)
- Treatment assignment: Time-based
- Confounds controlled: Partially
- Attribution confidence: Medium

☐ **Matched Comparison** (Moderate)
- Treatment assignment: Selected
- Confounds controlled: Partially
- Attribution confidence: Medium

☐ **Uncontrolled Observation** (Weakest)
- Treatment assignment: Opportunistic
- Confounds controlled: No
- Attribution confidence: Low

### Confounding Factor Analysis

| Factor | Could Affect Results? | Evidence | Controlled? |
|--------|----------------------|----------|-------------|
| Seasonality | [Yes/No] | [What we checked] | [Yes/No/Partially] |
| Process changes | [Yes/No] | [What we checked] | [Yes/No/Partially] |
| Personnel changes | [Yes/No] | [What we checked] | [Yes/No/Partially] |
| Volume changes | [Yes/No] | [What we checked] | [Yes/No/Partially] |
| External events | [Yes/No] | [What we checked] | [Yes/No/Partially] |
| Selection bias | [Yes/No] | [What we checked] | [Yes/No/Partially] |

### Alternative Explanations

| Alternative Explanation | Plausibility | Evidence Against |
|------------------------|--------------|------------------|
| [Explanation 1] | [High/Med/Low] | [Why we can/can't rule out] |
| [Explanation 2] | [High/Med/Low] | [Why we can/can't rule out] |

### Attribution Conclusion

**Confidence that results are due to AI intervention:**
☐ High — Strong design, confounds controlled
☐ Medium — Reasonable design, some uncertainty
☐ Low — Weak design, alternative explanations plausible
```

### Trend Analysis

```markdown
## Pre-Existing Trend Analysis

**Question:** Was the metric already improving before the intervention?

**Baseline Trend:**
- Direction: [Improving / Stable / Declining]
- Rate: [X units per week]
- Statistical significance of trend: [p-value]

**Pilot Period Trend:**
- Direction: [Improving / Stable / Declining]
- Rate: [X units per week]
- Statistical significance of trend: [p-value]

**Trend Change:**
- Did the intervention change the trend? [Yes/No]
- Magnitude of trend change: [X]

[Chart showing trend lines for baseline and pilot periods]

**Implication:**
[What does the trend analysis tell us about the intervention effect?]
```

---

## Phase 5: Interpretation

### Results Summary

```markdown
## Results Summary

### Primary Metric

| Measure | Value | vs. Target | Conclusion |
|---------|-------|------------|------------|
| Baseline | [X] | — | — |
| Pilot Result | [Y] | — | — |
| Improvement | [Z]% | Target was [T]% | [Met / Exceeded / Below] |
| Statistical Significance | p = [value] | α = 0.05 | [Significant / Not Significant] |
| Effect Size | [value] | — | [Small / Medium / Large] |
| MVS Threshold | [M]% | Result: [Z]% | [Met / Not Met] |

### Secondary Metrics

| Metric | Baseline | Result | Target | Status |
|--------|----------|--------|--------|--------|
| [Metric 1] | | | | 🟢🟡🔴 |
| [Metric 2] | | | | 🟢🟡🔴 |

### Guardrail Metrics

| Metric | Threshold | Result | Status |
|--------|-----------|--------|--------|
| [Metric 1] | [Max X] | [Result] | ✅❌ |
| [Metric 2] | [Min Y] | [Result] | ✅❌ |

### Kill Criteria

| Criterion | Threshold | Triggered? |
|-----------|-----------|------------|
| [K1] | [Threshold] | [No / Yes] |
| [K2] | [Threshold] | [No / Yes] |
```

### Success Assessment

```markdown
## Success Assessment

### Against Pre-Defined Thresholds

| Level | Threshold | Result | Achieved? |
|-------|-----------|--------|-----------|
| Stretch Goal | [X]% | [Y]% | ☐ |
| Target | [X]% | [Y]% | ☐ |
| Minimum Viable Success | [X]% | [Y]% | ☐ |
| Baseline | [X] | [Y] | ☐ |

### Overall Success Rating

☐ **Exceeded Expectations** — Stretch goal achieved
☐ **Met Expectations** — Target achieved
☐ **Partial Success** — MVS achieved, target not reached
☐ **Did Not Succeed** — Below MVS
☐ **Failed** — Below baseline or guardrails breached
```

### Limitations and Caveats

```markdown
## Limitations

**Data Limitations:**
- [Limitation 1 and impact on conclusions]
- [Limitation 2 and impact on conclusions]

**Methodology Limitations:**
- [Limitation 1 and impact on conclusions]
- [Limitation 2 and impact on conclusions]

**Generalizability:**
- Pilot population: [Description]
- Full population: [Description]
- Differences that may affect scale results: [List]

**Confidence Level:**
Overall confidence in conclusions: [High / Medium / Low]
Reason: [Explanation]
```

---

## Phase 6: Documentation

### Results Report Template

```markdown
# [Pilot Name] - Results Analysis Report

## Executive Summary

**Pilot Duration:** [Start] to [End] ([X] weeks)
**Primary Metric:** [Name]
**Result:** [X]% improvement (Baseline: [Y], Pilot: [Z])
**vs. Target:** [Met / Exceeded / Below by X%]
**Statistical Confidence:** [p-value, significance]
**Recommendation:** [GO / CONDITIONAL GO / NO-GO]

---

## 1. Background

### Pilot Objective
[What was the pilot trying to achieve?]

### Hypothesis
[What did we expect to happen?]

### Success Criteria
[How was success defined?]

---

## 2. Methodology

### Pilot Design
[Description of how the pilot was structured]

### Population
- Total eligible: [N]
- Included in pilot: [N]
- Exclusions: [Reasons]

### Measurement Approach
[How metrics were collected and calculated]

### Comparison Method
[How pilot results were compared to baseline]

---

## 3. Results

### Primary Metric
[Detailed results with charts and statistics]

### Secondary Metrics
[Summary of supporting metrics]

### Guardrail Metrics
[Confirmation that guardrails were not breached]

### Unexpected Findings
[Anything not anticipated]

---

## 4. Analysis

### Statistical Significance
[Summary of statistical tests]

### Causal Attribution
[Confidence that results are due to intervention]

### Segment Analysis
[How results varied by segment]

---

## 5. Interpretation

### What Worked
[Key success factors]

### What Didn't Work
[Challenges and shortfalls]

### Lessons Learned
[Insights for future]

---

## 6. Recommendation

### Decision: [GO / CONDITIONAL GO / NO-GO]

**Rationale:**
[Why this recommendation]

**Conditions (if Conditional Go):**
- [Condition 1]
- [Condition 2]

**Next Steps:**
1. [Next step 1]
2. [Next step 2]

---

## Appendices

### A. Data Quality Report
### B. Statistical Test Details
### C. Raw Data Summary
### D. Methodology Notes
```

---

## Quick Reference: Analysis Checklist

### Before Analysis
- [ ] Data quality validated
- [ ] Baseline data available
- [ ] Success criteria documented
- [ ] Statistical approach planned

### During Analysis
- [ ] Descriptive statistics calculated
- [ ] Significance tests run
- [ ] Effect sizes computed
- [ ] Confidence intervals calculated
- [ ] Confounds checked
- [ ] Segments analyzed

### After Analysis
- [ ] Results interpreted against thresholds
- [ ] Limitations documented
- [ ] Recommendation justified
- [ ] Report reviewed by second person
- [ ] Findings presented to stakeholders

---

## See Also

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [`../02-definition/baseline-measurement-guide.md`](../02-definition/baseline-measurement-guide.md) | Baseline methodology | Reference for comparison |
| [`../02-definition/success-criteria-framework.md`](../02-definition/success-criteria-framework.md) | Success thresholds | Interpret results against criteria |
| [`../03-execution/metrics-tracking-sheet.md`](../03-execution/metrics-tracking-sheet.md) | Weekly metrics data | Source data for analysis |
| [`go-no-go-decision-matrix.md`](go-no-go-decision-matrix.md) | Decision framework | After analysis complete |
| [`../governance/bias-testing-protocol.md`](../governance/bias-testing-protocol.md) | Bias testing | Include in analysis if applicable |
| [`lessons-learned-template.md`](lessons-learned-template.md) | Capture learnings | After analysis regardless of outcome |
