# Insurance Claims Pilot: Complete Worked Example

> A real-world example of an AI pilot to automate straightforward insurance claims processing, reducing cycle time and adjuster workload.

---

## Executive Summary

| Attribute | Value |
|-----------|-------|
| **Pilot Name** | Auto-Adjudication for Personal Auto Claims |
| **Client** | Regional Mutual Insurance Company (RMIC) |
| **Duration** | 12 weeks (March - June 2024) |
| **Primary Metric** | Straight-Through Processing Rate |
| **Result** | 31% of claims auto-adjudicated (target: 35%) |
| **Decision** | CONDITIONAL GO - Proceed with model improvements |

---

## 1. Problem

### Background

Regional Mutual Insurance Company (RMIC) processes approximately 45,000 personal auto claims annually. The claims department has 28 adjusters handling everything from minor fender-benders to total losses. Processing times have increased as volume grew, leading to customer complaints and regulatory scrutiny.

### Problem Statement

> Claims adjusters spend 40% of their time on straightforward, low-complexity claims that follow clear patterns, resulting in a 12-day average cycle time across all claims. This delays payments to customers, increases call center volume (customers checking status), and prevents adjusters from focusing on complex claims requiring expertise.

### Business Impact

| Impact Area | Quantification |
|-------------|----------------|
| Adjuster time on simple claims | 11,200 hours annually (40% × 28 adjusters × 1,000 hrs) |
| Customer satisfaction (CSAT) | 3.2/5 (industry benchmark: 4.0) |
| Call center inquiries | 35% of calls are status checks |
| Regulatory concern | State insurance commissioner inquiry on processing times |
| **Strategic Impact** | Competitive disadvantage, brand erosion |

### Prior Attempts

| Attempt | What Happened |
|---------|---------------|
| Added 4 temporary adjusters | Helped short-term, not sustainable cost |
| Process redesign | 15% efficiency gain, but not transformational |
| Vendor claims automation | Too expensive, poor integration with legacy systems |

---

## 2. Discovery

### Stakeholder Interviews

| Stakeholder | Key Insights |
|-------------|--------------|
| **VP of Claims** | "Half my team is doing work a computer should do. I want them on the phone with customers who need help, not entering data." |
| **Senior Adjuster** | "Most claims under $3,000 are identical. Check the policy is active, verify the loss is covered, pay the claim. Takes 20 minutes of my time for no reason." |
| **Customer Service** | "Customers call every 3 days asking where their check is. If we could pay simple claims in 48 hours, calls would drop dramatically." |
| **IT Director** | "Our claims system is 15 years old. Any solution needs to work with what we have, not replace it." |
| **Compliance Officer** | "Whatever we do needs an audit trail. I need to explain every decision to regulators." |

### Data Audit Summary

| Data Source | Quality | Availability | Relevance |
|-------------|---------|--------------|-----------|
| Claims system (structured) | Good | Full history 7 years | High |
| Policy data | Good | Real-time | High |
| Claim documents (photos, estimates) | Medium | Linked to claims | Medium |
| Adjuster notes | Poor | Free text, inconsistent | Medium |
| Payment history | Good | Full history | Low |

**Key Finding:** 7 years of claims decisions provide excellent training data. Structured data is clean; unstructured notes are challenging.

### AI Readiness Assessment

| Dimension | Score | Notes |
|-----------|-------|-------|
| Data Infrastructure | 7/10 | Good structured data, legacy system constraints |
| Process Maturity | 8/10 | Well-documented adjudication guidelines |
| Technical Capability | 4/10 | Minimal ML experience, good IT fundamentals |
| Change Readiness | 6/10 | Adjusters supportive but skeptical |
| Leadership Alignment | 8/10 | Strong VP sponsorship |
| **Overall** | **6.6/10** | Ready with technical support |

### Claims Segmentation Analysis

| Segment | Volume | Avg Claim | Complexity | Auto-Adjudication Potential |
|---------|--------|-----------|------------|----------------------------|
| Collision <$3K, clear liability | 18,000 (40%) | $1,800 | Low | High |
| Collision <$3K, disputed liability | 4,500 (10%) | $2,200 | Medium | Low |
| Collision $3K-$10K | 9,000 (20%) | $5,500 | Medium | Medium |
| Collision >$10K | 4,500 (10%) | $18,000 | High | None |
| Comprehensive (non-collision) | 6,750 (15%) | $1,200 | Low | High |
| Other | 2,250 (5%) | Varies | High | None |

**Target Population:** Collision <$3K clear liability + Comprehensive = 55% of claims

---

## 3. Definition

### Pilot Scope

**In Scope:**
- Collision claims under $3,000 with clear liability (single vehicle or >80% other party at fault)
- Comprehensive claims (non-collision: theft, glass, weather)
- Active policies with no coverage disputes
- Claims with complete documentation

**Out of Scope:**
- Bodily injury claims (BI)
- Total losses
- Disputed liability
- Claims requiring Special Investigations Unit (SIU)
- Policies with coverage questions

### Success Criteria

| Level | Metric | Target |
|-------|--------|--------|
| **Primary: Straight-Through Processing** | % auto-adjudicated without human intervention | |
| Stretch Goal | | 45% of eligible claims |
| Target | | 35% of eligible claims |
| Minimum Viable Success | | 25% of eligible claims |
| **Secondary Metrics** | | |
| Accuracy (vs. human decision) | | >98% agreement |
| Cycle time (auto-adjudicated) | | <48 hours |
| Customer satisfaction (CSAT) | | No decrease from baseline |

### Kill Criteria

| Criterion | Trigger | Owner |
|-----------|---------|-------|
| Accuracy | <95% agreement with adjuster decisions | Technical Lead |
| Customer complaints | >5 complaints on auto-adjudicated claims | Claims VP |
| Payment errors | Any overpayment >$500 | Compliance |
| Regulatory concern | Any inquiry from state regulator | Compliance |
| Adjuster workload | Net increase in adjuster time | Claims VP |

### Baseline Measurement

**Period:** January - February 2024 (8 weeks)

**Eligible Claims Pool (for pilot criteria):**

| Metric | Value |
|--------|-------|
| Total claims | 7,500 (8 weeks) |
| Eligible for auto-adjudication | 4,125 (55%) |
| Average cycle time (eligible) | 8.2 days |
| Average cycle time (all claims) | 12.4 days |
| Average claim amount (eligible) | $1,650 |
| Adjuster time per eligible claim | 22 minutes |

### Timeline

| Week | Phase | Key Activities |
|------|-------|----------------|
| 1-2 | Setup | Data extraction, model environment, adjudication rules |
| 3-5 | Build | Model development, rules engine, integration design |
| 6-8 | Validate | Parallel testing vs. adjuster decisions |
| 9-11 | Pilot | Live auto-adjudication with monitoring |
| 12 | Evaluate | Results analysis, decision |

---

## 4. Execution

### Week 1-2: Setup

**Activities:**
- Extracted 5 years of claims data (127,000 eligible claims)
- Documented explicit adjudication rules with claims team
- Built decision taxonomy: Approve / Deny / Route to Adjuster
- Created integration design with legacy claims system

**Key Decisions:**
- Used rules engine + ML hybrid approach
- Rules for clear policy/coverage checks
- ML for claim validity and amount verification

### Week 3-5: Build

**Model Architecture:**

```
Claim Submitted
      ↓
[Rules Engine: Policy Active?] → No → Route to Adjuster
      ↓ Yes
[Rules Engine: Coverage Valid?] → No → Route to Adjuster
      ↓ Yes
[Rules Engine: Eligible Type?] → No → Route to Adjuster
      ↓ Yes
[ML Model: Claim Validity Score] → <0.85 → Route to Adjuster
      ↓ ≥0.85
[ML Model: Amount Verification] → Anomaly → Route to Adjuster
      ↓ OK
[Auto-Approve] → Payment Initiated
```

**Model Performance (Validation Set):**

| Metric | Value |
|--------|-------|
| Accuracy vs. adjuster decision | 97.8% |
| Claims correctly auto-approved | 89% of model-approved |
| Claims correctly routed | 94% |
| False approvals (should have been denied) | 0.3% |
| Overpayment risk (avg error when wrong) | $180 |

### Week 6-8: Parallel Validation

**Method:** Model made recommendations on 1,500 live claims; adjusters made actual decisions; compared outcomes.

**Results:**

| Model Recommendation | Adjuster Agreed | Adjuster Disagreed | Agreement Rate |
|----------------------|-----------------|-------------------|----------------|
| Auto-approve (892) | 873 | 19 | 97.9% |
| Route to adjuster (608) | 571 | 37 | 93.9% |
| **Total** | **1,444** | **56** | **96.3%** |

**Disagreement Analysis:**
- 19 cases model approved, adjuster didn't: 11 were borderline (adjuster was conservative), 8 were model errors
- 37 cases model routed, adjuster approved: Model was more conservative than necessary

**Week 8 Checkpoint:**
- 96.3% agreement exceeded 95% threshold
- Conservative bias acceptable (routes to adjuster vs. incorrect approval)
- Decision: Proceed to live pilot

### Week 9-11: Live Pilot

**Volume:**

| Week | Eligible Claims | Auto-Adjudicated | Rate | Exceptions |
|------|-----------------|------------------|------|------------|
| 9 | 482 | 141 | 29% | 2 reviews needed |
| 10 | 511 | 162 | 32% | 1 reversal |
| 11 | 498 | 158 | 32% | 0 |
| **Total** | **1,491** | **461** | **31%** | **3** |

**Key Events:**

**Week 9 - First Exception:**
> Claim #4892 auto-approved for $2,100 windshield replacement. Customer called—turned out they had filed for wrong vehicle (had two policies). Caught in payment processing. System correctly processed claim, but customer error. Added vehicle verification step.

**Week 10 - Reversal Case:**
> Claim #5241 auto-approved for $1,850 collision repair. Adjuster supervisor reviewed sample and identified photo showed prior damage. Reversed payment. Updated model to flag claims where damage photos have metadata inconsistencies.

**Week 11 - Smooth Operations:**
> No exceptions. Adjusters reporting significant workload relief. Customer satisfaction surveys showing positive response to fast payment.

### Metrics During Pilot

| Metric | Baseline | Pilot | Change |
|--------|----------|-------|--------|
| Straight-through processing rate | 0% | 31% | +31pp |
| Cycle time (auto-adjudicated) | N/A | 38 hours | — |
| Cycle time (all eligible) | 8.2 days | 5.1 days | -38% |
| Customer satisfaction (auto) | N/A | 4.4/5 | — |
| Adjuster time saved | — | 168 hours | — |

---

## 5. Results

### Primary Metric: Straight-Through Processing Rate

| Measure | Value |
|---------|-------|
| Baseline | 0% (no auto-adjudication) |
| Pilot Result | 31% of eligible claims |
| **Target** | **35%** |
| Result vs Target | **Below by 4pp** |
| MVS (25%) | ✅ **Achieved** |

**Why Below Target:**

Analysis of claims not auto-adjudicated:

| Reason | % of Eligible Not Auto-Adjudicated |
|--------|-----------------------------------|
| Missing documentation | 28% |
| Claim amount near $3K threshold | 18% |
| Liability unclear in FNOL | 15% |
| Multiple vehicles involved | 12% |
| Policy data sync delay | 9% |
| Model confidence too low | 8% |
| Other | 10% |

**Path to 35%:** Addressing documentation and FNOL quality could add 10-15pp.

### Secondary Metrics

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Accuracy vs. adjuster | >98% | 99.4% (458/461) | ✅ Exceeded |
| Cycle time (auto) | <48 hours | 38 hours | ✅ Exceeded |
| Customer satisfaction | No decrease | 4.4/5 vs 3.2/5 baseline | ✅ Exceeded |

### Guardrail Metrics

| Metric | Threshold | Actual | Status |
|--------|-----------|--------|--------|
| Overpayment errors | <$5,000 total | $0 | ✅ |
| Customer complaints | <5 | 0 | ✅ |
| Regulatory inquiries | 0 | 0 | ✅ |

### Financial Impact

**Pilot Period (3 weeks):**
| Item | Calculation | Value |
|------|-------------|-------|
| Adjuster hours saved | 461 claims × 22 min | 169 hours |
| Hourly cost (loaded) | | $45/hr |
| Labor value | 169 × $45 | $7,600 |
| Pilot cost | | $185,000 |

**Projected Annual Value at 31% Rate:**
| Item | Calculation | Value |
|------|-------------|-------|
| Eligible claims annually | 22,688 | |
| Auto-adjudicated (31%) | 7,033 | |
| Adjuster hours saved | 7,033 × 22 min / 60 | 2,579 hours |
| Labor value | 2,579 × $45 | $116,000 |
| Call center reduction (est.) | 15% reduction | $45,000 |
| Customer retention (est.) | Improved CSAT value | $80,000 |
| **Total Annual Benefit** | | **$241,000** |
| Annual operating cost | | $60,000 |
| **Net Annual Benefit** | | **$181,000** |

**At Target 35% Rate:**
| Item | Value |
|------|-------|
| Auto-adjudicated | 7,941 claims |
| Net Annual Benefit | $210,000 |

**At Stretch 45% Rate:**
| Item | Value |
|------|-------|
| Auto-adjudicated | 10,210 claims |
| Net Annual Benefit | $285,000 |

---

## 6. Lessons Learned

### What Worked Well

| Category | Learning |
|----------|----------|
| **Hybrid Approach** | Rules engine + ML was more explainable and auditable than pure ML. Regulators could understand the logic. |
| **Conservative Bias** | Routing uncertain claims to adjusters rather than risking incorrect approvals built trust. |
| **Parallel Testing** | Three weeks of shadow mode caught issues before live deployment. |
| **Quick Payments** | 38-hour cycle time delighted customers. CSAT jumped significantly. |
| **Adjuster Buy-In** | Positioning as "handle the boring stuff so you can focus on complex cases" resonated. |

### What Didn't Work

| Category | Learning | Recommendation |
|----------|----------|----------------|
| **Documentation Gaps** | 28% of eligible claims failed due to missing documents. | Invest in upfront document capture at FNOL. Consider document extraction AI. |
| **FNOL Quality** | First Notice of Loss often incomplete, causing routing. | Improve FNOL form with required fields. |
| **Threshold Sensitivity** | Claims near $3K were often routed due to uncertainty. | Consider dynamic threshold based on claim characteristics. |
| **Model Training** | Historical adjuster notes were too inconsistent to use. | Structure future adjuster inputs for ML consumption. |

### Surprises

| Surprise | Implication |
|----------|-------------|
| **Customer reaction** | Customers didn't notice or care about AI. They just wanted fast payment. | Don't over-explain the technology. Focus on the outcome. |
| **Adjuster relief** | Adjusters more positive than expected. They genuinely disliked simple claims. | Change management may be easier when automating unloved work. |
| **Compliance comfort** | Regulators were satisfied with audit trail and explainability. | Invest in explainability upfront. |

---

## 7. Decision

### Go/No-Go Scoring

| Dimension | Score | Evidence |
|-----------|-------|----------|
| Technical Success | 4/5 | 99.4% accuracy, robust model, minor gaps identified |
| Business Impact | 3/5 | Below target (31% vs 35%), but MVS achieved and path to improvement clear |
| Scalability | 4/5 | Model handles volume, integration stable, known gaps addressable |
| Organizational Fit | 4/5 | Strong adoption, compliance satisfied, adjusters supportive |
| **Weighted Total** | **3.7/5** | |

### Decision: CONDITIONAL GO ✅

**Rationale:**
While the pilot fell short of the 35% target, it exceeded MVS, demonstrated significant customer and operational value, and identified clear paths to improvement. The gap is primarily due to upstream data quality issues rather than model limitations.

**Conditions:**

| # | Condition | Owner | Due Date | Verification |
|---|-----------|-------|----------|--------------|
| 1 | Implement enhanced document capture at FNOL | IT Director | 8 weeks | Document completeness >90% |
| 2 | Add FNOL required field validation | IT Director | 6 weeks | FNOL completeness >95% |
| 3 | Retrain model with improved data | Technical Lead | 10 weeks | Validation accuracy maintained |
| 4 | Achieve 35% auto-adjudication rate | Claims VP | 12 weeks | 4-week rolling average |

### Scale Plan (Conditional on Success)

| Phase | Scope | Timeline |
|-------|-------|----------|
| Current | Collision <$3K + Comprehensive | Continue |
| Phase 2 | Add Collision $3K-$5K | Month 3 |
| Phase 3 | Add Collision $5K-$10K | Month 6 |
| Future | Evaluate BI claims (separate pilot) | TBD |

---

## 8. Artifacts

### Pilot Documentation
- Pilot Scope Document
- Adjudication Rules Specification
- Weekly Status Reports
- Exception Case Analysis
- Compliance Review Documentation

### Technical Artifacts
- Model Architecture Document
- API Integration Specification
- Audit Trail Schema
- Monitoring Dashboard

### Templates Created
- Auto-Adjudication Decision Log
- Exception Review Checklist
- Compliance Audit Report Format

---

## Key Takeaways for Future Pilots

1. **Hybrid rules + ML** provides explainability regulators need
2. **Data quality upstream** often limits automation more than model capability
3. **Conservative models build trust** - better to route to human than make errors
4. **Parallel testing is essential** for high-stakes decisions
5. **Customer outcome matters** - they don't care about AI, they care about speed
6. **Automate unloved work** - change management easier when removing pain
