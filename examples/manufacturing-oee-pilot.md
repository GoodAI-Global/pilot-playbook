# Manufacturing OEE Pilot: Complete Worked Example

> A real-world example of an AI pilot to improve Overall Equipment Effectiveness (OEE) through predictive maintenance and anomaly detection.

---

## Executive Summary

| Attribute | Value |
|-----------|-------|
| **Pilot Name** | Predictive Maintenance for CNC Machining Centers |
| **Client** | Precision Components Manufacturing (PCM) |
| **Duration** | 10 weeks (February - April 2024) |
| **Primary Metric** | Unplanned Downtime Reduction |
| **Result** | 34% reduction in unplanned downtime |
| **Decision** | GO - Approved for scale to all 12 CNC lines |

---

## 1. Problem

### Background

Precision Components Manufacturing (PCM) operates a facility with 12 CNC machining centers producing aerospace components. The machines run 24/7 with three shifts. Unplanned downtime directly impacts delivery schedules for aerospace customers with strict on-time requirements.

### Problem Statement

> CNC machining centers experience an average of 47 hours of unplanned downtime per machine per month, resulting in $2.3M annual lost production value and frequent customer delivery delays. Current reactive maintenance approach means failures occur without warning, causing cascading schedule impacts and premium freight costs for expedited shipments.

### Business Impact

| Impact Area | Quantification |
|-------------|----------------|
| Lost production value | $2.3M annually (all 12 machines) |
| Premium freight costs | $180K annually |
| Customer penalties | $95K annually |
| Overtime labor (catch-up) | $220K annually |
| **Total Annual Impact** | **$2.8M** |

### Prior Attempts

| Attempt | What Happened |
|---------|---------------|
| Increased PM frequency | Helped 10-15%, but costly and caused planned downtime |
| Operator training | Modest improvement, inconsistent application |
| Vendor monitoring service | Too generic, high false alarm rate |

---

## 2. Discovery

### Stakeholder Interviews

| Stakeholder | Key Insights |
|-------------|--------------|
| **Plant Manager** | "We're losing a shift per machine per month to breakdowns. Customers are threatening to dual-source." |
| **Maintenance Manager** | "We can predict spindle failures if we catch vibration changes early. Problem is we don't have time to check every machine constantly." |
| **Operators** | "Sometimes the machine sounds different for days before it breaks. But we don't know if it's serious." |
| **Quality Manager** | "Before spindle failures, we often see dimensional drift in parts. By then it's too late." |

### Data Audit Summary

| Data Source | Quality | Availability | Relevance |
|-------------|---------|--------------|-----------|
| Machine sensor data (vibration, temp) | Good | Real-time via MTConnect | High |
| Maintenance work orders | Medium | Historical 3 years | High |
| Production schedule | Good | Real-time | Medium |
| Quality measurements | Good | Daily | High |
| Operator logs | Poor | Paper-based, incomplete | Medium |

**Key Finding:** Machines have been collecting vibration and temperature data for 2 years, but no one was analyzing it. Rich historical dataset available.

### AI Readiness Assessment

| Dimension | Score | Notes |
|-----------|-------|-------|
| Data Infrastructure | 7/10 | Good sensor data, needs aggregation pipeline |
| Process Maturity | 6/10 | PM schedule exists but not data-driven |
| Technical Capability | 5/10 | Strong controls engineering, limited ML |
| Change Readiness | 7/10 | Team frustrated with breakdowns, wants solutions |
| Leadership Alignment | 8/10 | Plant Manager is strong sponsor |
| **Overall** | **6.6/10** | Ready with conditions |

### Bottleneck Analysis

```
Production Line Capacity Analysis:

CNC Machining → Assembly → Quality → Shipping
   85% OEE       95%       98%      99%
      ↑
  BOTTLENECK

Unplanned downtime is 62% of OEE loss at CNC.
Improving CNC availability has direct throughput impact.
```

---

## 3. Definition

### Pilot Scope

**In Scope:**
- 3 CNC machining centers (lines 4, 7, 11 - chosen for failure history)
- Spindle and axis drive monitoring (80% of unplanned downtime)
- Real-time anomaly detection with operator alerts
- Maintenance recommendation dashboard

**Out of Scope:**
- Other machine types (lathes, grinders)
- Tool wear prediction (separate initiative)
- Full predictive scheduling integration
- Remaining 9 CNC machines (Phase 2)

### Success Criteria

| Level | Metric | Target |
|-------|--------|--------|
| **Primary: Unplanned Downtime** | Hours/machine/month | |
| Stretch Goal | | 40% reduction (28 hrs → 17 hrs) |
| Target | | 30% reduction (28 hrs → 20 hrs) |
| Minimum Viable Success | | 20% reduction (28 hrs → 22 hrs) |
| **Secondary Metrics** | | |
| False positive rate | | <10% of alerts |
| Mean time to failure prediction | | >24 hours advance warning |
| Operator alert response rate | | >90% within 15 minutes |

### Kill Criteria

| Criterion | Trigger | Owner |
|-----------|---------|-------|
| False positive rate | >25% for 2 consecutive weeks | Technical Lead |
| Sensor data quality | >20% missing data points | Data Engineer |
| Operator adoption | <50% alert acknowledgment | Change Lead |
| Unplanned downtime increase | >10% increase vs baseline | Pilot Lead |
| Week 5 checkpoint | No demonstrated predictions | Sponsor |

### Baseline Measurement

**Period:** December 2023 - January 2024 (8 weeks)

| Machine | Unplanned Downtime (hrs/month) | Major Failure Events |
|---------|--------------------------------|----------------------|
| CNC-04 | 31 | 4 spindle, 2 axis |
| CNC-07 | 26 | 3 spindle, 1 axis, 2 other |
| CNC-11 | 27 | 2 spindle, 3 axis, 1 other |
| **Average** | **28** | |

### Timeline

| Week | Phase | Key Activities |
|------|-------|----------------|
| 1-2 | Setup | Data pipeline, model environment, team onboarding |
| 3-4 | Build | Anomaly detection model development |
| 5-6 | Validate | Model testing, alert threshold tuning |
| 7-9 | Pilot | Live monitoring, operator feedback |
| 10 | Evaluate | Results analysis, decision |

---

## 4. Execution

### Week 1-2: Setup

**Activities:**
- Deployed data aggregation pipeline from MTConnect
- Created historical training dataset (18 months of sensor + maintenance data)
- Labeled failure events with maintenance team
- Set up monitoring infrastructure

**Challenges:**
- Data timestamp synchronization across systems (resolved Week 2)
- Missing sensor calibration records (accepted as limitation)

### Week 3-4: Build

**Model Approach:**
- Isolation Forest for anomaly detection on multivariate sensor data
- Random Forest classifier for failure type prediction
- Custom thresholds tuned with maintenance team input

**Technical Details:**
- 47 sensor features per machine (vibration, temperature, load, power)
- 15-minute aggregation windows
- Training data: 247 labeled failure events across 12 machines

**Model Performance (Validation Set):**
| Metric | Value |
|--------|-------|
| True positive rate (failures detected) | 87% |
| False positive rate | 8% |
| Mean lead time before failure | 31 hours |

### Week 5-6: Validate

**Activities:**
- Deployed model to 3 pilot machines (shadow mode)
- Tracked model predictions against actual events
- Tuned alert thresholds based on operator feedback
- Created maintenance recommendation interface

**Week 5 Checkpoint:**
- Model detected 2 developing failures before they occurred
- One false positive (temperature sensor drift, not machine issue)
- Decision: Proceed to live alerting

### Week 7-9: Live Pilot

**Alert Summary:**

| Week | Alerts Sent | True Positives | False Positives | Prevented Failures |
|------|-------------|----------------|-----------------|-------------------|
| 7 | 5 | 4 | 1 | 2 |
| 8 | 7 | 5 | 2 | 3 |
| 9 | 6 | 5 | 1 | 4 |
| **Total** | **18** | **14** | **4** | **9** |

**Key Events:**

**Week 7 - Spindle Bearing Detection:**
> CNC-04 alert triggered at 14:23 Tuesday. Elevated vibration signature matching spindle bearing degradation pattern. Maintenance inspected same shift, confirmed early bearing wear. Replaced during scheduled PM Saturday. Estimated 8 hours unplanned downtime avoided.

**Week 8 - Axis Drive Prediction:**
> CNC-11 alert triggered for X-axis servo showing anomalous current draw. 36 hours later, maintenance preemptively replaced drive during lunch break (30 min planned downtime). Similar failure on CNC-02 (not in pilot) caused 14 hours downtime.

**Week 9 - False Positive Learning:**
> CNC-07 triggered cooling system alert. Investigation found ambient temperature spike from HVAC issue, not machine problem. Added ambient temp as model input to reduce similar false positives.

### Metrics During Pilot (Weeks 7-9)

| Machine | Baseline (hrs/month) | Pilot Period (annualized) | Change |
|---------|----------------------|---------------------------|--------|
| CNC-04 | 31 | 19 | -39% |
| CNC-07 | 26 | 18 | -31% |
| CNC-11 | 27 | 18 | -33% |
| **Average** | **28** | **18.3** | **-34%** |

---

## 5. Results

### Primary Metric: Unplanned Downtime

| Measure | Value |
|---------|-------|
| Baseline (8 weeks prior) | 28.0 hours/machine/month |
| Pilot period (3 weeks, annualized) | 18.3 hours/machine/month |
| **Improvement** | **34%** |
| Target | 30% |
| Result vs Target | **Exceeded by 4%** |

**Statistical Significance:**
- t-statistic: 3.42
- p-value: 0.008
- 95% CI for improvement: [21%, 47%]
- Conclusion: Statistically significant improvement

### Secondary Metrics

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| False positive rate | <10% | 22% (4/18) | ⚠️ Above target |
| Mean prediction lead time | >24 hrs | 31 hrs | ✅ Exceeded |
| Operator response rate | >90% | 94% | ✅ Exceeded |

### Guardrail Metrics

| Metric | Threshold | Actual | Status |
|--------|-----------|--------|--------|
| Quality escapes | No increase | No change | ✅ |
| Planned downtime | <10% increase | +3% (more proactive PM) | ✅ |
| Operator workload | No increase in overtime | No change | ✅ |

### ROI Calculation

**Pilot Period Value:**
| Item | Calculation | Value |
|------|-------------|-------|
| Downtime prevented | 9 events × 6 hrs avg | 54 hours |
| Production value | 54 hrs × $350/hr | $18,900 |
| Pilot cost | Labor + infrastructure | $45,000 |
| **Pilot ROI** | | **-58%** (expected for pilot) |

**Projected Annual Value at Full Scale:**
| Item | Calculation | Value |
|------|-------------|-------|
| Machines | 12 | |
| Monthly downtime reduction | 9.7 hrs/machine | |
| Annual downtime prevented | 12 × 9.7 × 12 months | 1,397 hours |
| Production value | 1,397 × $350/hr | **$489,000** |
| Expediting/penalties avoided | Est. 50% reduction | $137,500 |
| **Total Annual Benefit** | | **$626,500** |
| Annual operating cost | | $85,000 |
| **Net Annual Benefit** | | **$541,500** |
| **ROI** | | **637%** |

---

## 6. Lessons Learned

### What Worked Well

| Category | Learning |
|----------|----------|
| **Data** | Historical sensor data was a gold mine. 2 years of data enabled supervised learning despite limited failure events. |
| **Stakeholder Engagement** | Including maintenance technicians in model tuning dramatically improved practical accuracy. They knew patterns the data couldn't show. |
| **Quick Wins** | First detected failure in Week 7 created immediate credibility. Team became advocates. |
| **Shadow Mode** | Running predictions without alerting for 2 weeks built confidence before go-live. |

### What Didn't Work

| Category | Learning | Recommendation |
|----------|----------|----------------|
| **False Positives** | 22% rate was above 10% target. Operators started to distrust some alert types. | Invest more in threshold tuning before live deployment. Consider tiered alert severity. |
| **Operator Interface** | Dashboard was too technical. Operators wanted simple "check this machine" guidance. | Co-design UI with end users from the start, not after model is built. |
| **Documentation** | Operators couldn't explain why they were checking machine. | Create simple explanation cards for each alert type. |

### Surprises

| Surprise | Implication |
|----------|-------------|
| **Operators already knew** | In 3 cases, operators said "I thought something was off" but didn't report it. The system gave them confidence to act. | Value is partly decision support, not just detection. |
| **Cascading benefits** | Proactive repairs were 40% faster than reactive because parts were pre-ordered and planned. | Factor in repair efficiency, not just detection. |
| **Cross-machine learning** | Model trained on all 12 machines performed better than machine-specific models. | Common failure modes outweigh machine variation. |

---

## 7. Decision

### Go/No-Go Scoring

| Dimension | Score | Evidence |
|-----------|-------|----------|
| Technical Success | 4/5 | 34% improvement, model production-ready, some tuning needed |
| Business Impact | 5/5 | Exceeded target, strong ROI, customer impact addressed |
| Scalability | 4/5 | Same model works across machines, infrastructure ready |
| Organizational Fit | 4/5 | Strong adoption, maintenance team enthusiastic |
| **Weighted Total** | **4.3/5** | |

### Decision: GO ✅

**Conditions:**
1. Reduce false positive rate to <15% before Phase 2 (tuning effort - 2 weeks)
2. Redesign operator interface based on feedback (4 weeks parallel track)
3. Create operator training program (before Phase 2 rollout)

### Scale Plan

| Phase | Machines | Timeline |
|-------|----------|----------|
| Phase 1 (Pilot) | CNC 4, 7, 11 | Complete |
| Phase 2 | CNC 1, 2, 3, 5, 6 | Month 1-2 post-decision |
| Phase 3 | CNC 8, 9, 10, 12 | Month 3-4 |
| Full Scale | All 12 + monitoring dashboard | Month 5 |

---

## 8. Artifacts

### Pilot Documentation
- Pilot Scope Document (signed)
- Weekly Review Notes (Weeks 1-10)
- Data Quality Assessment
- Model Validation Report
- Operator Feedback Summary

### Technical Artifacts
- Data pipeline architecture
- Model training notebook
- Alert threshold configuration
- Deployment runbook

### Templates Created
- Machine-specific failure labeling guide
- Operator alert response checklist
- Maintenance prediction SOP

---

## Key Takeaways for Future Pilots

1. **Historical data is valuable** - Check for existing sensor data that isn't being used
2. **Involve operators early** - They have knowledge that improves models
3. **Start with shadow mode** - Build confidence before live alerts
4. **False positives erode trust** - Set realistic targets and tune aggressively
5. **Quick wins matter** - Early success creates momentum
6. **UI is not an afterthought** - Design for the end user from day one
