# ROI Calculator for AI Pilots

> "If you can't calculate the return, you can't justify the investment."

## Purpose

This calculator provides a structured approach to building the business case for AI pilots. It helps you:
- Quantify expected benefits before starting
- Track actual value during execution
- Justify scale investment after pilot completion
- Compare AI investment against alternatives

---

## Quick ROI Formula

```
ROI = (Net Benefit / Total Investment) × 100

Where:
- Net Benefit = Total Benefits - Total Costs
- Total Investment = Pilot Costs + Scale Costs (if projecting)
```

**Minimum Viable ROI for Pilots:** 150% (1.5x return)
**Target ROI for Scale Decision:** 300% (3x return)

---

## Part 1: Cost Estimation

### 1.1 Pilot Costs

| Category | Item | Hours/Units | Rate/Cost | Total | Notes |
|----------|------|-------------|-----------|-------|-------|
| **Personnel - Internal** | | | | | |
| | Project Manager | hrs | $/hr | $ | |
| | Data Engineer | hrs | $/hr | $ | |
| | Data Scientist/ML Engineer | hrs | $/hr | $ | |
| | Domain Expert/SME | hrs | $/hr | $ | |
| | IT Support | hrs | $/hr | $ | |
| | Change Management | hrs | $/hr | $ | |
| **Personnel - External** | | | | | |
| | Consultants | hrs | $/hr | $ | |
| | Contractors | hrs | $/hr | $ | |
| **Technology** | | | | | |
| | Cloud Infrastructure | months | $/mo | $ | |
| | Software Licenses | | | $ | |
| | API Costs | calls | $/call | $ | |
| | Development Tools | | | $ | |
| **Data** | | | | | |
| | Data Acquisition | | | $ | |
| | Data Cleaning/Prep | hrs | $/hr | $ | |
| | Labeling/Annotation | items | $/item | $ | |
| **Other** | | | | | |
| | Training | | | $ | |
| | Travel | | | $ | |
| | Miscellaneous | | | $ | |
| **Subtotal** | | | | **$** | |
| **Contingency (15-20%)** | | | | $ | |
| **TOTAL PILOT COST** | | | | **$** | |

### 1.2 Scale Costs (Post-Pilot Projection)

| Category | Item | Year 1 | Year 2 | Year 3 | Notes |
|----------|------|--------|--------|--------|-------|
| **Implementation** | | | | | |
| | Full deployment | $ | — | — | One-time |
| | Integration work | $ | — | — | One-time |
| | Training rollout | $ | $ | $ | |
| **Operations** | | | | | |
| | Infrastructure | $ | $ | $ | Annual |
| | Licenses/Subscriptions | $ | $ | $ | Annual |
| | Support team | $ | $ | $ | Annual |
| | Maintenance | $ | $ | $ | Annual |
| **TOTAL SCALE COST** | | **$** | **$** | **$** | |

---

## Part 2: Benefit Estimation

### 2.1 Benefit Categories

#### Category A: Labor Cost Savings

> Time saved × fully loaded labor cost

| Process | Current Time | New Time | Time Saved | Volume | Labor Rate | Annual Savings |
|---------|--------------|----------|------------|--------|------------|----------------|
| [Process 1] | min | min | min | /year | $/hr | $ |
| [Process 2] | min | min | min | /year | $/hr | $ |
| [Process 3] | min | min | min | /year | $/hr | $ |
| **TOTAL LABOR SAVINGS** | | | | | | **$** |

**Calculation:**
```
Annual Savings = (Time Saved in hours) × (Annual Volume) × (Fully Loaded Hourly Rate)

Example:
- Time saved: 15 minutes = 0.25 hours
- Volume: 10,000 transactions/year
- Rate: $45/hour (fully loaded)
- Savings: 0.25 × 10,000 × $45 = $112,500/year
```

#### Category B: Error/Quality Cost Reduction

> Errors prevented × cost per error

| Error Type | Current Rate | New Rate | Reduction | Volume | Cost/Error | Annual Savings |
|------------|--------------|----------|-----------|--------|------------|----------------|
| [Error 1] | % | % | % | /year | $ | $ |
| [Error 2] | % | % | % | /year | $ | $ |
| [Error 3] | % | % | % | /year | $ | $ |
| **TOTAL ERROR SAVINGS** | | | | | | **$** |

**Calculation:**
```
Annual Savings = (Error Rate Reduction) × (Volume) × (Cost per Error)

Example:
- Current error rate: 5%
- New error rate: 1%
- Reduction: 4%
- Volume: 50,000 transactions
- Cost per error: $150
- Savings: 0.04 × 50,000 × $150 = $300,000/year
```

#### Category C: Throughput/Capacity Gains

> Additional output × value per unit

| Capacity Metric | Current | New | Increase | Value/Unit | Annual Value |
|-----------------|---------|-----|----------|------------|--------------|
| [Metric 1] | /day | /day | /day | $ | $ |
| [Metric 2] | /day | /day | /day | $ | $ |
| **TOTAL CAPACITY VALUE** | | | | | **$** |

**Calculation:**
```
Annual Value = (Capacity Increase per Day) × (Working Days) × (Value per Unit)

Example:
- Current: 100 units/day
- New: 130 units/day
- Increase: 30 units/day
- Working days: 250
- Value per unit: $50
- Value: 30 × 250 × $50 = $375,000/year
```

#### Category D: Risk/Cost Avoidance

> Incidents prevented × cost per incident

| Risk Type | Current Frequency | New Frequency | Reduction | Cost/Incident | Annual Savings |
|-----------|-------------------|---------------|-----------|---------------|----------------|
| [Risk 1] | /year | /year | /year | $ | $ |
| [Risk 2] | /year | /year | /year | $ | $ |
| **TOTAL RISK AVOIDANCE** | | | | | **$** |

#### Category E: Revenue Enhancement

> New revenue enabled by AI capability

| Revenue Source | Mechanism | Annual Revenue | Confidence | Risk-Adjusted |
|----------------|-----------|----------------|------------|---------------|
| [Source 1] | [How AI enables] | $ | % | $ |
| [Source 2] | [How AI enables] | $ | % | $ |
| **TOTAL REVENUE** | | | | **$** |

**Note:** Revenue projections should be risk-adjusted. Apply confidence factor (e.g., 50% for uncertain, 80% for likely).

### 2.2 Benefit Summary

| Category | Annual Benefit | Confidence | Risk-Adjusted |
|----------|----------------|------------|---------------|
| A. Labor Savings | $ | % | $ |
| B. Error Reduction | $ | % | $ |
| C. Capacity Gains | $ | % | $ |
| D. Risk Avoidance | $ | % | $ |
| E. Revenue Enhancement | $ | % | $ |
| **TOTAL ANNUAL BENEFIT** | **$** | | **$** |

---

## Part 3: ROI Calculation

### 3.1 Pilot ROI

```
Pilot Investment:        $__________
Pilot Duration:          __________ weeks
Annualized Benefit:      $__________
Benefit During Pilot:    $__________ (Annualized × Pilot weeks ÷ 52)

Pilot ROI = (Benefit During Pilot - Pilot Investment) / Pilot Investment × 100
Pilot ROI = __________ %
```

**Interpretation:**
- Negative ROI during pilot is normal (investment phase)
- Focus on annualized benefit potential for scale decision

### 3.2 Scale ROI (3-Year View)

| Year | Benefits | Costs | Net Benefit | Cumulative |
|------|----------|-------|-------------|------------|
| 0 (Pilot) | $ | $ | $ | $ |
| 1 | $ | $ | $ | $ |
| 2 | $ | $ | $ | $ |
| 3 | $ | $ | $ | $ |
| **TOTAL** | **$** | **$** | **$** | |

```
3-Year ROI = (Total Benefits - Total Costs) / Total Costs × 100
3-Year ROI = __________ %
```

### 3.3 Payback Period

```
Payback Period = Total Investment / Monthly Net Benefit

Example:
- Total Investment: $500,000
- Annual Net Benefit: $300,000
- Monthly Net Benefit: $25,000
- Payback Period: $500,000 / $25,000 = 20 months
```

### 3.4 Net Present Value (NPV)

For multi-year projections, discount future benefits:

| Year | Net Benefit | Discount Factor (10%) | Present Value |
|------|-------------|----------------------|---------------|
| 0 | $ | 1.000 | $ |
| 1 | $ | 0.909 | $ |
| 2 | $ | 0.826 | $ |
| 3 | $ | 0.751 | $ |
| **NPV** | | | **$** |

```
NPV = Σ (Net Benefit in Year t) / (1 + discount rate)^t

Decision Rule: NPV > 0 indicates positive return
```

---

## Part 4: Sensitivity Analysis

### 4.1 Key Assumptions

| Assumption | Base Case | Pessimistic | Optimistic | Source |
|------------|-----------|-------------|------------|--------|
| Adoption rate | % | % | % | |
| Time savings per transaction | min | min | min | |
| Error rate reduction | % | % | % | |
| Volume growth | % | % | % | |
| Implementation timeline | months | months | months | |

### 4.2 Scenario Analysis

| Scenario | Benefits | Costs | ROI | Decision |
|----------|----------|-------|-----|----------|
| **Pessimistic** | $ | $ | % | |
| **Base Case** | $ | $ | % | |
| **Optimistic** | $ | $ | % | |

### 4.3 Break-Even Analysis

```
Break-Even Volume = Fixed Costs / (Benefit per Unit - Variable Cost per Unit)

At what volume does the investment pay off?
Break-Even: __________ units/transactions
Current Volume: __________ units/transactions
Margin of Safety: __________ %
```

---

## Part 5: Comparison with Alternatives

### 5.1 Alternative Options

| Option | Description | Cost | Benefit | ROI | Pros | Cons |
|--------|-------------|------|---------|-----|------|------|
| **Do Nothing** | Status quo | $0 | $0 | N/A | No investment | Problem persists |
| **Manual Improvement** | Process optimization | $ | $ | % | Lower risk | Limited upside |
| **RPA** | Rule-based automation | $ | $ | % | Proven tech | Less flexible |
| **AI/ML Solution** | This proposal | $ | $ | % | Highest potential | Higher complexity |
| **Vendor Solution** | Buy vs build | $ | $ | % | Faster start | Less control |

### 5.2 Recommendation

```
Recommended Option: __________

Rationale:
1. [Reason 1]
2. [Reason 2]
3. [Reason 3]

Risk-Adjusted ROI: __________ %
Confidence Level: High / Medium / Low
```

---

## Part 6: Business Case Summary

```markdown
## Executive Summary

### Investment Request
- Pilot Investment: $__________
- Scale Investment (if successful): $__________
- Total 3-Year Investment: $__________

### Expected Return
- Annual Benefit (at scale): $__________
- 3-Year Net Benefit: $__________
- ROI: __________ %
- Payback Period: __________ months

### Key Benefits
1. [Primary benefit with $$ value]
2. [Secondary benefit with $$ value]
3. [Tertiary benefit with $$ value]

### Key Risks
1. [Risk 1] - Mitigation: [Approach]
2. [Risk 2] - Mitigation: [Approach]

### Recommendation
[Approve / Approve with conditions / Defer / Reject]

### Decision Required By
[Date] to meet [milestone/deadline]
```

---

## Templates and Formulas Reference

### Common Fully Loaded Labor Rates

| Role | Base Salary | Benefits (30%) | Overhead (25%) | Fully Loaded |
|------|-------------|----------------|----------------|--------------|
| Entry-level | $50,000 | $15,000 | $12,500 | $77,500 ($37/hr) |
| Mid-level | $80,000 | $24,000 | $20,000 | $124,000 ($60/hr) |
| Senior | $120,000 | $36,000 | $30,000 | $186,000 ($89/hr) |
| Expert | $180,000 | $54,000 | $45,000 | $279,000 ($134/hr) |

### Cost of Errors by Industry

| Industry | Error Type | Typical Cost |
|----------|------------|--------------|
| Manufacturing | Defect reaching customer | $100-$10,000 |
| Healthcare | Medical error | $10,000-$1,000,000+ |
| Financial Services | Transaction error | $50-$500 |
| Insurance | Claims error | $200-$5,000 |
| Retail | Order error | $25-$150 |

### Working Days and Hours

| Period | Days | Hours (8hr day) |
|--------|------|-----------------|
| Year | 250 | 2,000 |
| Quarter | 63 | 504 |
| Month | 21 | 168 |
| Week | 5 | 40 |

---

## Checklist Before Submitting Business Case

- [ ] All cost categories included (personnel, technology, data, other)
- [ ] Contingency added (15-20%)
- [ ] Benefits quantified with clear methodology
- [ ] Confidence levels assigned to uncertain benefits
- [ ] Sensitivity analysis completed
- [ ] Alternatives considered
- [ ] Payback period calculated
- [ ] NPV calculated for multi-year projections
- [ ] Key assumptions documented
- [ ] Risks identified with mitigations
- [ ] Executive summary written
- [ ] Decision deadline specified
