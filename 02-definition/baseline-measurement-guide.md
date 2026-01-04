# Baseline Measurement Guide

> "You cannot prove improvement without proving the starting point."

## Why Baselines Matter

A baseline is your "before" picture. Without it:
- You cannot demonstrate ROI
- You cannot distinguish signal from noise
- You cannot defend your results to skeptics
- You have opinions, not evidence

**The Baseline Paradox:** Organizations that need AI most often have the worst baseline data. Solving this is half the battle.

---

## Baseline Principles

### 1. Measure Before You Build

```
WRONG: Build solution → Launch → Try to find "before" data
RIGHT: Measure baseline → Document methodology → Build solution → Measure same way
```

### 2. Measure What Matters, Not What's Easy

The primary metric should be your baseline focus. Don't substitute a proxy because it's easier to measure.

| Temptation | Problem | Solution |
|------------|---------|----------|
| "We'll use last year's data" | Different conditions | Collect fresh baseline period |
| "We'll estimate from samples" | Bias in sampling | Systematic measurement |
| "We'll ask people to self-report" | Over/underestimation | Observe directly |
| "We'll use the available data" | May not match metric | Define metric first, then collect |

### 3. Same Methodology, Different Time

Your pilot measurement and baseline measurement must be identical in method.

| Element | Baseline | Pilot | Match Required? |
|---------|----------|-------|-----------------|
| Data source | System A | System A | ✅ Yes |
| Calculation formula | (X/Y) × 100 | (X/Y) × 100 | ✅ Yes |
| Exclusion criteria | Exclude type Z | Exclude type Z | ✅ Yes |
| Time window | Rolling 30-day | Rolling 30-day | ✅ Yes |
| Sampling method | 100% of transactions | 100% of transactions | ✅ Yes |

---

## Baseline Measurement Process

### Step 1: Define What to Measure

Start from the Success Criteria Framework. For each metric:

```markdown
## Metric Definition

**Metric:** [Name]

**Definition:**
[Precise definition in plain language]

**Formula:**
[Mathematical formula]

**Numerator:** [What counts]
**Denominator:** [Total population]

**Unit:** [%, seconds, $, count, etc.]

**Example Calculation:**
- Scenario: [Describe scenario]
- Numerator: [Number]
- Denominator: [Number]
- Result: [Calculated value]
```

### Step 2: Identify Data Sources

| Question | Answer |
|----------|--------|
| Where does this data live? | [System name] |
| What format is it in? | [Database table, API, logs, manual] |
| Who owns this data? | [Team/person] |
| How do we access it? | [Query, export, API call] |
| What's the latency? | [Real-time, daily, weekly] |
| What's the retention? | [How far back can we go] |
| What are known quality issues? | [List issues] |

### Step 3: Determine Baseline Period

The baseline period must be:
- **Long enough** to capture normal variation (minimum 4 weeks)
- **Recent enough** to reflect current state (within last 6 months)
- **Representative** of typical operations (avoid holidays, anomalies)
- **Stable** without major process changes during the period

#### Baseline Period Selection

| Factor | Consideration |
|--------|---------------|
| **Seasonality** | If seasonal, baseline same season as pilot OR full year |
| **Trend** | If trending, acknowledge trend and adjust expectations |
| **Anomalies** | Exclude or call out unusual periods (COVID, outages) |
| **Recency** | More recent is better if process is stable |
| **Volume** | Enough samples for statistical significance |

#### Recommended Minimums

| Metric Type | Minimum Baseline Period | Preferred |
|-------------|------------------------|-----------|
| High-frequency (1000+/day) | 2 weeks | 4 weeks |
| Medium-frequency (100+/day) | 4 weeks | 8 weeks |
| Low-frequency (<100/day) | 8 weeks | 12 weeks |
| Seasonal variation | Full cycle (often 1 year) | Multiple cycles |

### Step 4: Validate Data Quality

Before accepting baseline data, validate:

#### Completeness Check
```sql
-- Example: Check for missing values
SELECT
  COUNT(*) as total_records,
  SUM(CASE WHEN key_field IS NULL THEN 1 ELSE 0 END) as missing_count,
  ROUND(100.0 * SUM(CASE WHEN key_field IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) as missing_pct
FROM baseline_data;
```

**Threshold:** Missing data should be <5% for key fields.

#### Accuracy Check
- Sample records and verify against source
- Compare to known reference points
- Cross-check with related metrics

**Method:** Random sample of 50-100 records manually verified.

#### Consistency Check
- Compare week-over-week for stability
- Check for obvious outliers
- Verify no definition changes during period

```sql
-- Example: Weekly consistency check
SELECT
  DATE_TRUNC('week', event_date) as week,
  COUNT(*) as volume,
  AVG(metric_value) as avg_metric,
  STDDEV(metric_value) as stddev_metric
FROM baseline_data
GROUP BY 1
ORDER BY 1;
```

**Threshold:** Week-over-week variation should be explainable.

### Step 5: Calculate and Document Baseline

#### Baseline Calculation Template

```markdown
## Baseline Measurement Report

### Metric: [Name]

**Period:** [Start date] to [End date] ([X] weeks)

**Data Source:** [System/table/query]

**Total Records:** [N]

**Exclusions Applied:**
- [Exclusion 1]: [N1] records removed
- [Exclusion 2]: [N2] records removed
- Final sample: [N - N1 - N2] records

**Calculation:**
- Numerator: [Value]
- Denominator: [Value]
- Result: [Value] [Unit]

**Statistical Summary:**
| Statistic | Value |
|-----------|-------|
| Mean | |
| Median | |
| Std Dev | |
| Min | |
| Max | |
| P25 | |
| P75 | |

**Weekly Breakdown:**
| Week | Volume | Metric Value |
|------|--------|--------------|
| Week 1 | | |
| Week 2 | | |
| Week 3 | | |
| Week 4 | | |

**Data Quality Notes:**
- Completeness: [X]% complete
- Accuracy: [X]% verified correct (sample of [N])
- Anomalies: [List any unusual periods or values]

**Calculated By:** [Name]
**Calculation Date:** [Date]
**Verified By:** [Name]
**Verification Date:** [Date]
```

---

## Baseline Patterns by Use Case

### Pattern 1: Time-Based Metric (Processing Time)

**Metric:** Average time to complete task X

**Measurement Approach:**
1. Identify start and end timestamps in system
2. Calculate duration for each instance
3. Aggregate across baseline period

**Watch Out For:**
- Clock sync issues across systems
- Paused/resumed transactions
- Overnight/weekend handling
- Timezone confusion

**Example Query:**
```sql
SELECT
  AVG(EXTRACT(EPOCH FROM (end_time - start_time))/60) as avg_minutes,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (end_time - start_time))/60) as median_minutes,
  PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (end_time - start_time))/60) as p95_minutes
FROM transactions
WHERE start_time BETWEEN '2024-01-01' AND '2024-01-31'
  AND status = 'COMPLETED';
```

### Pattern 2: Accuracy/Error Rate Metric

**Metric:** Percentage of transactions with errors

**Measurement Approach:**
1. Define what counts as an "error" precisely
2. Count errors in baseline period
3. Count total transactions in baseline period
4. Calculate rate

**Watch Out For:**
- Definition of "error" must be unambiguous
- Some errors detected immediately, others later
- Self-corrected errors may not be logged

**Example Query:**
```sql
SELECT
  COUNT(*) as total_transactions,
  SUM(CASE WHEN has_error = TRUE THEN 1 ELSE 0 END) as error_count,
  ROUND(100.0 * SUM(CASE WHEN has_error = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2) as error_rate_pct
FROM transactions
WHERE transaction_date BETWEEN '2024-01-01' AND '2024-01-31';
```

### Pattern 3: Volume/Throughput Metric

**Metric:** Number of units processed per time period

**Measurement Approach:**
1. Count completed units per day/week
2. Calculate average over baseline period
3. Note trend (increasing/decreasing/stable)

**Watch Out For:**
- Capacity vs. demand (backlog effects)
- Day-of-week variation
- Seasonal patterns

### Pattern 4: Cost Metric

**Metric:** Cost per transaction

**Measurement Approach:**
1. Total costs (labor, materials, overhead) for period
2. Total transactions for same period
3. Divide

**Watch Out For:**
- Fixed vs. variable costs
- Allocation methodology consistency
- One-time costs in baseline period

### Pattern 5: Manual Measurement (No System Data)

When data isn't captured systematically:

**Measurement Approach:**
1. Design observation/collection protocol
2. Train observers for consistency
3. Collect for minimum viable period
4. Validate with spot checks

**Watch Out For:**
- Observer bias (Hawthorne effect)
- Incomplete capture
- Representativeness of observation period

**Example Protocol:**
```markdown
## Manual Time Study Protocol

**Observer:** Record time spent on [Task X] for all instances.

**Duration:** 2 weeks minimum, 4 weeks preferred.

**Recording:**
For each instance of Task X:
1. Record start time (HH:MM)
2. Record end time (HH:MM)
3. Record outcome (Complete/Incomplete/Error)
4. Record any interruptions (Y/N, duration)
5. Record task type/category if applicable

**Exclusions:**
- Training activities
- Unusual circumstances (document but exclude)

**Quality Control:**
- Supervisor spot-check 10% of recordings
- Inter-observer comparison for first 3 days
```

---

## Common Baseline Problems and Solutions

### Problem: "We don't have baseline data"

**Solutions:**
1. **Collect prospectively:** Delay pilot start by 4-6 weeks to collect baseline
2. **Use proxy data:** Find related metrics that exist and correlate to target
3. **Estimate with triangulation:** Multiple imperfect sources combined
4. **Reduce scope:** Pilot on subset where data exists

### Problem: "Baseline period had anomalies"

**Solutions:**
1. **Exclude anomalies:** Remove affected period, document reason
2. **Adjust statistically:** Control for known factors
3. **Extend period:** Add more time to dilute anomaly impact
4. **Acknowledge in analysis:** Note limitation in results interpretation

### Problem: "Process changed during baseline"

**Solutions:**
1. **Use post-change only:** Reset baseline to stable period
2. **Model the change:** Include change as factor in analysis
3. **Split baseline:** Analyze before and after separately

### Problem: "Different definitions used historically"

**Solutions:**
1. **Recalculate:** Go back to raw data, apply current definition
2. **Map definitions:** Create conversion between old and new
3. **Acknowledge gap:** Note comparability limitations

### Problem: "Stakeholders dispute baseline"

**Solutions:**
1. **Document methodology:** Transparent, reproducible calculation
2. **Joint verification:** Stakeholders review raw data
3. **Multiple sources:** Triangulate with independent data
4. **Pre-commit:** Agree on baseline before pilot starts

---

## Baseline Documentation Checklist

Before pilot starts, confirm:

- [ ] Primary metric baseline calculated and documented
- [ ] Secondary metrics baselines calculated and documented
- [ ] Guardrail metrics baselines calculated and documented
- [ ] Baseline period documented with rationale
- [ ] Data source and access method documented
- [ ] Calculation methodology documented (reproducible)
- [ ] Data quality assessment completed
- [ ] Exclusions documented with rationale
- [ ] Statistical summary included (mean, median, variance)
- [ ] Week-by-week breakdown included
- [ ] Anomalies identified and addressed
- [ ] Baseline report reviewed by second person
- [ ] Baseline report signed off by stakeholders
- [ ] Measurement methodology locked (no changes during pilot)

---

## Quick Reference

### Minimum Viable Baseline

If time is extremely limited:

1. **Define metric precisely** (30 minutes)
2. **Pull last 4 weeks of data** (variable)
3. **Calculate simple average** (30 minutes)
4. **Spot-check 10 records** (1 hour)
5. **Document in 1 page** (30 minutes)
6. **Get sponsor sign-off** (30 minutes)

### Gold Standard Baseline

For critical pilots:

1. **Metric definition workshop** (2 hours)
2. **Data source audit** (1-2 days)
3. **8-week data collection** (8 weeks)
4. **Full data quality assessment** (1-2 days)
5. **Statistical analysis** (1 day)
6. **Stakeholder review** (1-2 hours)
7. **Independent verification** (1 day)
8. **Documented and signed** (2 hours)
