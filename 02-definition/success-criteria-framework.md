# Success Criteria Framework

> "If you can't measure it, you can't improve it. If you measure everything, you improve nothing."

## The ONE Number Principle

Every pilot must have exactly ONE primary metric. This is the number that determines success or failure. Everything else is supporting evidence.

Why one number?
- **Focus**: Teams optimize what they measure. Multiple "primary" metrics create confusion.
- **Clarity**: Stakeholders need a single answer to "Did it work?"
- **Honesty**: Multiple metrics enable cherry-picking successes while hiding failures.

---

## Primary Metric Selection

### Characteristics of a Good Primary Metric

| Characteristic | Description | Test |
|----------------|-------------|------|
| **Specific** | Precisely defined, no ambiguity | Can two people calculate it independently and get the same result? |
| **Measurable** | Quantifiable with existing data | Can you measure it today, before the pilot? |
| **Actionable** | Pilot activities directly influence it | If the pilot succeeds, will this number move? |
| **Relevant** | Directly tied to business value | Does leadership care about this number? |
| **Timely** | Measurable within pilot duration | Can you see meaningful change in 8-12 weeks? |

### Common Primary Metrics by Use Case

| Use Case | Primary Metric | Unit |
|----------|----------------|------|
| Process Automation | Time savings per transaction | Minutes |
| Quality Improvement | Defect rate | % |
| Predictive Maintenance | Unplanned downtime | Hours |
| Customer Service | First-contact resolution rate | % |
| Document Processing | Straight-through processing rate | % |
| Demand Forecasting | Forecast accuracy (MAPE) | % |
| Anomaly Detection | True positive rate at fixed FPR | % |
| Classification | Accuracy/F1 at production threshold | % |

### Primary Metric Template

```markdown
## Primary Metric Definition

**Metric Name:** [Clear, unambiguous name]

**Definition:**
[Precise mathematical definition. Include formula if applicable.]

**Calculation:**
Numerator: [What counts as success]
Denominator: [Total population]
Formula: (Numerator / Denominator) × 100

**Current Baseline:** [X.XX%] measured on [date] from [source]

**Measurement Method:**
- Data source: [System/database/manual collection]
- Sampling: [100% or sampling methodology]
- Frequency: [Daily/Weekly/Monthly]
- Calculation timing: [When is it calculated]
- Owner: [Who produces the number]

**Thresholds:**
| Level | Value | Interpretation |
|-------|-------|----------------|
| Minimum Viable Success | [X%] | Pilot continues; consider scale |
| Target Success | [Y%] | Strong case for scaling |
| Stretch Goal | [Z%] | Exceptional; accelerate scale |
| Failure Threshold | [Below W%] | Trigger kill criteria review |
```

---

## Success Thresholds

### Defining Thresholds

| Threshold | Definition | How to Set |
|-----------|------------|------------|
| **Minimum Viable Success (MVS)** | Smallest improvement worth continuing | ROI breakeven + margin of safety |
| **Target Success** | Expected outcome based on similar projects | Benchmarks + realistic assessment |
| **Stretch Goal** | Exceptional outcome, exceeds expectations | Top quartile of similar projects |
| **Failure Threshold** | Result indicating pilot should stop | Below MVS with no path to improvement |

### Threshold Calculation Methods

#### Method 1: ROI-Based (Recommended for Cost Savings)

```
MVS = Break-even improvement + 20% buffer

Example:
- Pilot cost: $50,000
- Annual process cost: $500,000
- Break-even improvement: 10%
- MVS: 12% (10% + 2% buffer)
```

#### Method 2: Benchmark-Based (Recommended for Performance)

```
MVS = Current baseline + (Industry benchmark - Current) × 0.25
Target = Current baseline + (Industry benchmark - Current) × 0.50
Stretch = Industry benchmark or better

Example:
- Current accuracy: 70%
- Industry benchmark: 90%
- Gap: 20 percentage points
- MVS: 75% (70% + 5%)
- Target: 80% (70% + 10%)
- Stretch: 90%
```

#### Method 3: Statistical Significance-Based

```
MVS = Minimum detectable effect at 80% power, α = 0.05

Use when:
- You have historical variance data
- Sample size is constrained
- Statistical rigor is required
```

---

## Secondary Metrics

### Purpose of Secondary Metrics

Secondary metrics serve three purposes:
1. **Explain** why the primary metric moved (or didn't)
2. **Guard** against unintended negative consequences
3. **Predict** future primary metric performance

### Secondary Metric Categories

#### Leading Indicators
Metrics that predict future primary metric performance.

| Example | Predicts |
|---------|----------|
| User adoption rate | Future efficiency gains |
| Data quality scores | Future model accuracy |
| Training completion | Future usage rates |

#### Quality Guardrails
Metrics that must NOT degrade during the pilot.

| Example | Constraint |
|---------|------------|
| Customer satisfaction | Must not decrease >5% |
| Error rate | Must not increase >2% |
| Compliance rate | Must remain 100% |

#### Efficiency Metrics
Metrics showing operational impact.

| Example | Purpose |
|---------|---------|
| Processing time | Shows speed improvement |
| Cost per transaction | Shows cost impact |
| Throughput | Shows capacity change |

### Secondary Metrics Template

```markdown
## Secondary Metrics

### Leading Indicators

| Metric | Baseline | Target | Why It Matters |
|--------|----------|--------|----------------|
| [Metric 1] | [Value] | [Value] | [Explanation] |
| [Metric 2] | [Value] | [Value] | [Explanation] |

### Quality Guardrails

| Metric | Current | Maximum Acceptable Change | Measurement |
|--------|---------|---------------------------|-------------|
| [Metric 1] | [Value] | [No more than X% decrease] | [Method] |
| [Metric 2] | [Value] | [Must remain above Y] | [Method] |

### Efficiency Metrics

| Metric | Baseline | Expected Improvement | Measurement |
|--------|----------|---------------------|-------------|
| [Metric 1] | [Value] | [X% improvement] | [Method] |
| [Metric 2] | [Value] | [Y% improvement] | [Method] |
```

---

## Measurement Methodology

### Data Collection Requirements

| Requirement | Description |
|-------------|-------------|
| **Baseline Period** | Minimum 4 weeks of pre-pilot data |
| **Comparison Method** | A/B test, before/after, or synthetic control |
| **Sample Size** | Sufficient for statistical significance |
| **Collection Frequency** | Aligned with decision points |
| **Data Quality Checks** | Automated validation rules |

### Comparison Approaches

#### Approach 1: A/B Test (Gold Standard)
- Randomly assign to treatment/control
- Requires sufficient volume
- Cleanest causal inference

#### Approach 2: Before/After
- Compare pilot period to baseline
- Control for seasonality and trends
- Use when A/B not possible

#### Approach 3: Synthetic Control
- Create control from similar untreated units
- Use when single treatment location
- Requires historical data on comparison units

### Measurement Plan Template

```markdown
## Measurement Plan

### Data Sources

| Data Element | Source System | Access Method | Owner | Quality Rating |
|--------------|---------------|---------------|-------|----------------|
| | | | | |

### Collection Schedule

| Metric | Frequency | Collection Day | Report Available |
|--------|-----------|----------------|------------------|
| Primary | | | |
| Secondary 1 | | | |
| Guardrail 1 | | | |

### Statistical Approach

**Comparison Method:** [A/B / Before-After / Synthetic Control]

**Sample Size Calculation:**
- Expected effect size: [X%]
- Baseline variance: [σ]
- Desired power: [80%]
- Significance level: [α = 0.05]
- Required sample size: [N]
- Expected pilot volume: [M]
- Sufficient: [Yes/No]

**Analysis Plan:**
1. [Step 1]
2. [Step 2]
3. [Step 3]
```

---

## Interpreting Results

### Result Categories

| Primary Metric Result | Secondary Metrics | Interpretation | Likely Decision |
|----------------------|-------------------|----------------|-----------------|
| ≥ Stretch | All positive | Exceptional success | Accelerate scale |
| ≥ Target | Mostly positive | Strong success | Proceed to scale |
| ≥ MVS | Mixed | Qualified success | Scale with conditions |
| < MVS, > Baseline | Positive | Partial success | Iterate or pivot |
| ≤ Baseline | Any | Failure | Sunset or major pivot |
| Any | Guardrails breached | Unacceptable tradeoff | Stop and investigate |

### Confidence Assessment

Before declaring success:

- [ ] Result is statistically significant (p < 0.05)
- [ ] Effect size is practically meaningful
- [ ] Result is stable over multiple measurement periods
- [ ] Result is consistent across segments/cohorts
- [ ] No guardrail metrics breached
- [ ] External factors ruled out as explanation

---

## Common Pitfalls

### Metric Selection Pitfalls

| Pitfall | Problem | Solution |
|---------|---------|----------|
| Vanity metrics | Measure activity, not outcome | Focus on business impact |
| Lagging indicators only | Can't course-correct | Add leading indicators |
| Too many primary metrics | Diluted focus | Pick ONE |
| Metric gaming possible | Goodhart's Law | Add guardrail metrics |

### Measurement Pitfalls

| Pitfall | Problem | Solution |
|---------|---------|----------|
| Insufficient baseline | Can't prove improvement | Collect 4+ weeks baseline |
| No control group | Confounding factors | Use comparison approach |
| Measurement changes mid-pilot | Breaks comparability | Lock methodology upfront |
| Cherry-picked time periods | Misleading results | Pre-commit to analysis windows |

### Threshold Pitfalls

| Pitfall | Problem | Solution |
|---------|---------|----------|
| Thresholds set after results | Confirmation bias | Document before pilot starts |
| Unrealistic targets | Guaranteed failure | Benchmark against similar projects |
| No minimum threshold | Any improvement counts | Set ROI-based minimum |
| Thresholds without margin | False positives | Include statistical uncertainty |

---

## Quick Reference Checklist

### Before Pilot Starts

- [ ] Primary metric defined precisely
- [ ] Baseline measured and documented
- [ ] All three thresholds set (MVS, Target, Stretch)
- [ ] Secondary metrics identified
- [ ] Guardrail metrics identified
- [ ] Measurement methodology documented
- [ ] Data collection validated
- [ ] Statistical approach confirmed
- [ ] All stakeholders aligned on definitions

### During Pilot

- [ ] Weekly metric tracking active
- [ ] Guardrails monitored continuously
- [ ] Leading indicators reviewed
- [ ] Data quality validated
- [ ] No methodology changes

### At Pilot End

- [ ] Statistical significance tested
- [ ] All thresholds compared
- [ ] Guardrails verified
- [ ] Confounding factors assessed
- [ ] Results documented
- [ ] Decision recommendation made

---

## See Also

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [`baseline-measurement-guide.md`](baseline-measurement-guide.md) | How to measure baseline properly | Before defining thresholds |
| [`pilot-scope-template.md`](pilot-scope-template.md) | Document criteria in scope | After defining success criteria |
| [`kill-criteria-examples.md`](kill-criteria-examples.md) | Define failure conditions | Alongside success criteria |
| [`../03-execution/metrics-tracking-sheet.md`](../03-execution/metrics-tracking-sheet.md) | Track metrics during pilot | During execution phase |
| [`../04-evaluation/go-no-go-decision-matrix.md`](../04-evaluation/go-no-go-decision-matrix.md) | Evaluate against criteria | At pilot end |
| [`../04-evaluation/results-analysis-framework.md`](../04-evaluation/results-analysis-framework.md) | Analyze statistical significance | At pilot end |
