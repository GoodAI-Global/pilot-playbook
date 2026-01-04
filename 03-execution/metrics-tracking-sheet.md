# Metrics Tracking Sheet

> "Trust the numbers, but verify the numbers. Inspect what you expect."

## Purpose

This tracking sheet provides a structured format for:
- Recording metrics consistently throughout the pilot
- Tracking trends over time
- Identifying issues early
- Building evidence for the final decision

---

## Tracking Sheet Structure

### Master Metrics Log

```markdown
# [Pilot Name] - Metrics Tracking Sheet

## Pilot Information
| Field | Value |
|-------|-------|
| Pilot Name | |
| Start Date | |
| End Date (Planned) | |
| Baseline Period | |
| Pilot Lead | |
| Data Owner | |

---

## Primary Metric Tracking

### Metric Definition

| Element | Value |
|---------|-------|
| **Metric Name** | |
| **Definition** | |
| **Formula** | |
| **Unit** | |
| **Source** | |
| **Collection Frequency** | |
| **Baseline** | |
| **MVS Target** | |
| **Target** | |
| **Stretch Goal** | |

### Weekly Tracking Log

| Week | Date | Value | Δ vs Baseline | Δ vs Target | Trend | Notes |
|------|------|-------|---------------|-------------|-------|-------|
| 1 | | | | | — | |
| 2 | | | | | ↑↓→ | |
| 3 | | | | | ↑↓→ | |
| 4 | | | | | ↑↓→ | |
| 5 | | | | | ↑↓→ | |
| 6 | | | | | ↑↓→ | |
| 7 | | | | | ↑↓→ | |
| 8 | | | | | ↑↓→ | |
| 9 | | | | | ↑↓→ | |
| 10 | | | | | ↑↓→ | |
| 11 | | | | | ↑↓→ | |
| 12 | | | | | ↑↓→ | |

### Trend Chart

[Insert or link to visualization showing primary metric over time with baseline and target lines]

---

## Secondary Metrics Tracking

### Metric 1: [Name]

| Element | Value |
|---------|-------|
| Definition | |
| Baseline | |
| Target | |

| Week | Value | Status | Notes |
|------|-------|--------|-------|
| 1 | | 🟢🟡🔴 | |
| 2 | | 🟢🟡🔴 | |
| ... | | | |

### Metric 2: [Name]

| Element | Value |
|---------|-------|
| Definition | |
| Baseline | |
| Target | |

| Week | Value | Status | Notes |
|------|-------|--------|-------|
| 1 | | 🟢🟡🔴 | |
| 2 | | 🟢🟡🔴 | |
| ... | | | |

### Metric 3: [Name]

| Element | Value |
|---------|-------|
| Definition | |
| Baseline | |
| Target | |

| Week | Value | Status | Notes |
|------|-------|--------|-------|
| 1 | | 🟢🟡🔴 | |
| 2 | | 🟢🟡🔴 | |
| ... | | | |

---

## Guardrail Metrics Tracking

### Guardrail 1: [Name]

| Element | Value |
|---------|-------|
| Definition | |
| Threshold | Must not exceed / Must remain above [X] |
| Consequence if breached | |

| Week | Value | Within Threshold? | Notes |
|------|-------|-------------------|-------|
| 1 | | ✅❌ | |
| 2 | | ✅❌ | |
| ... | | | |

### Guardrail 2: [Name]

| Element | Value |
|---------|-------|
| Definition | |
| Threshold | |
| Consequence if breached | |

| Week | Value | Within Threshold? | Notes |
|------|-------|-------------------|-------|
| 1 | | ✅❌ | |
| 2 | | ✅❌ | |
| ... | | | |

---

## Kill Criteria Monitoring

| Criterion | Trigger Value | Current | Status | Notes |
|-----------|---------------|---------|--------|-------|
| [K1 - Data Quality] | | | ⬜🟨🔴 | |
| [K2 - Technical] | | | ⬜🟨🔴 | |
| [K3 - Business] | | | ⬜🟨🔴 | |
| [K4 - Timeline] | | | ⬜🟨🔴 | |
| [K5 - Cost] | | | ⬜🟨🔴 | |

**Status Key:**
- ⬜ Clear: Far from trigger
- 🟨 Approaching: Within 20% of trigger
- 🔴 Triggered: Action required

---

## Data Quality Log

| Date | Issue Identified | Severity | Impact | Resolution | Status |
|------|------------------|----------|--------|------------|--------|
| | | H/M/L | | | |

---

## Volume Tracking

| Week | Records Processed | Eligible Records | Coverage % |
|------|-------------------|------------------|------------|
| 1 | | | |
| 2 | | | |
| ... | | | |

---

## Notes and Anomalies

| Date | Observation | Impact on Metrics | Action Taken |
|------|-------------|-------------------|--------------|
| | | | |
```

---

## Data Collection Process

### Daily Data Collection (Automated When Possible)

| Time | Activity | Owner |
|------|----------|-------|
| End of day | Automated metric collection runs | Data pipeline |
| End of day | Quality checks execute | Data pipeline |
| Morning +1 | Review quality alerts | Data Owner |

### Weekly Data Collection

| Day | Activity | Owner |
|-----|----------|-------|
| Friday PM | Pull weekly aggregate metrics | Data Owner |
| Friday PM | Validate data quality | Data Owner |
| Friday PM | Update tracking sheet | Pilot Lead |
| Monday AM | Review in weekly meeting | Team |

### Manual Data Collection (If Needed)

```markdown
## Manual Collection Protocol

**Collector:** [Name]
**Frequency:** [Daily/Weekly]
**Source:** [Where data comes from]

**Steps:**
1. [Step 1]
2. [Step 2]
3. [Step 3]

**Quality Check:**
- [ ] All fields complete
- [ ] Values within expected range
- [ ] Totals reconcile

**Submission:**
- Enter into [system/sheet]
- By [time] on [day]
```

---

## Status Thresholds

### Primary Metric Status

| Status | Condition |
|--------|-----------|
| 🟢 Green | On track to meet target |
| 🟡 Yellow | Between MVS and target trajectory |
| 🔴 Red | Below MVS trajectory |

### Secondary Metric Status

| Status | Condition |
|--------|-----------|
| 🟢 Green | Meeting or exceeding target |
| 🟡 Yellow | 80-100% of target |
| 🔴 Red | Below 80% of target |

### Trend Indicators

| Indicator | Meaning |
|-----------|---------|
| ↑ | Improving (metric moving toward target) |
| → | Stable (no significant change) |
| ↓ | Declining (metric moving away from target) |

---

## Analysis Templates

### Weekly Variance Analysis

```markdown
## Week [X] Variance Analysis

**Primary Metric:**
- Actual: [X]
- Expected: [Y]
- Variance: [Z] ([%])

**Variance Explanation:**
[Why did we see this variance?]

**Root Cause:**
[What drove the difference?]

**Action:**
[What will we do about it?]
```

### Trend Analysis

```markdown
## Trend Analysis (Weeks 1-X)

**Overall Trend:** ↑ Improving / → Stable / ↓ Declining

**Trend Line:**
[Description of pattern - linear improvement, plateauing, volatile, etc.]

**Projection:**
At current trend, expected final result: [X]
vs. Target: [Y]
Gap: [Z]

**Confidence:**
[High/Medium/Low] - [Reason for confidence level]

**Action if Off Track:**
[What changes are needed?]
```

### Statistical Significance Check

```markdown
## Statistical Significance Analysis

**Period:** Week [X] to Week [Y]

**Comparison:**
- Baseline: [Mean] ± [Std Dev], n=[N]
- Pilot: [Mean] ± [Std Dev], n=[N]

**Difference:** [Absolute] ([Percentage])

**Test Used:** [t-test / chi-square / other]

**Result:**
- t-statistic / chi-square: [Value]
- p-value: [Value]
- Significant at α=0.05? [Yes/No]

**Interpretation:**
[What does this mean for the pilot?]
```

---

## Metrics Dashboard Elements

### Recommended Visualizations

| Metric Type | Visualization | Purpose |
|-------------|---------------|---------|
| Primary metric | Line chart with baseline + target | Track progress over time |
| Secondary metrics | Sparklines or small multiples | Quick status check |
| Guardrails | Gauge or threshold indicator | Clear pass/fail |
| Volume | Bar chart | Verify statistical validity |
| Distribution | Histogram | Understand variance |

### Dashboard Template

```
╔══════════════════════════════════════════════════════════════╗
║  [PILOT NAME] METRICS DASHBOARD       Week [X] | [Date]     ║
╠══════════════════════════════════════════════════════════════╣
║                                                              ║
║  PRIMARY METRIC: [Name]                                      ║
║  ┌──────────────────────────────────────────────────────┐   ║
║  │  [Line chart: actual vs baseline vs target]          │   ║
║  │                                                      │   ║
║  │  Current: [X]  Target: [Y]  Baseline: [Z]           │   ║
║  └──────────────────────────────────────────────────────┘   ║
║                                                              ║
║  SECONDARY METRICS                                           ║
║  ┌────────────────┬────────────────┬────────────────┐       ║
║  │ [Metric 1]     │ [Metric 2]     │ [Metric 3]     │       ║
║  │ [Value] 🟢     │ [Value] 🟡     │ [Value] 🟢     │       ║
║  └────────────────┴────────────────┴────────────────┘       ║
║                                                              ║
║  GUARDRAILS                                                  ║
║  ┌────────────────────────────────────────────────────┐     ║
║  │ [Guardrail 1]: ✅ OK  │ [Guardrail 2]: ✅ OK      │     ║
║  └────────────────────────────────────────────────────┘     ║
║                                                              ║
║  KILL CRITERIA: All Clear ⬜⬜⬜⬜⬜                         ║
║                                                              ║
╚══════════════════════════════════════════════════════════════╝
```

---

## Metrics Integrity Checklist

### Before Recording Metrics

- [ ] Data source confirmed
- [ ] Query/calculation verified
- [ ] Date range correct
- [ ] Exclusions applied consistently
- [ ] Units correct

### When Recording Metrics

- [ ] Value matches source
- [ ] Compared to last period (sense check)
- [ ] Anomalies noted
- [ ] Status assessed
- [ ] Comments added for context

### Periodic Validation

- [ ] Sample records manually verified (weekly)
- [ ] Calculation logic reviewed (monthly)
- [ ] Source system changes checked (ongoing)
- [ ] Cross-reference with other data sources

---

## Troubleshooting Metrics Issues

| Issue | Possible Cause | Resolution |
|-------|----------------|------------|
| Metric suddenly drops/spikes | Data quality issue | Validate source data |
| Metric stops updating | Pipeline failure | Check ETL jobs |
| Metric doesn't match expectations | Definition mismatch | Verify calculation |
| Metric shows impossible value | Data corruption | Trace to source |
| Trend reverses unexpectedly | External factor | Document and adjust |
