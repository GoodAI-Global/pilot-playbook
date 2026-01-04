# Aquaculture Monitoring Pilot: Complete Worked Example

> A real-world example of an AI pilot to detect fish health issues early through computer vision analysis of feeding behavior and environmental monitoring.

---

## Executive Summary

| Attribute | Value |
|-----------|-------|
| **Pilot Name** | Early Mortality Detection System for Salmon Farming |
| **Client** | Nordic Aquaculture AS |
| **Duration** | 12 weeks (August - November 2024) |
| **Primary Metric** | Early Detection Rate (mortality events detected >48 hrs in advance) |
| **Result** | 67% early detection (target: 60%) |
| **Decision** | GO - Expand to all 8 farming sites |

---

## 1. Problem

### Background

Nordic Aquaculture AS operates 8 open-pen salmon farming sites across the Norwegian coast, producing 45,000 tonnes of Atlantic salmon annually. Fish health is monitored through manual observation, periodic sampling, and reactive response to mortality events. With 2-3 million fish per site, early detection of health issues is challenging.

### Problem Statement

> Fish mortality events are detected an average of 2-3 days after onset, by which point disease has spread and losses have compounded. Each major mortality event costs €200-500K in direct losses plus treatment costs. The company experiences 12-18 significant mortality events annually across all sites, resulting in €3-6M in preventable losses.

### Business Impact

| Impact Area | Quantification |
|-------------|----------------|
| Direct fish losses | €3.2M annually |
| Treatment costs (late intervention) | €1.1M annually |
| Feeding waste (sick fish don't eat) | €0.8M annually |
| Growth delay (stressed fish) | €1.5M annually |
| **Total Annual Impact** | **€6.6M** |

### Prior Attempts

| Attempt | What Happened |
|---------|---------------|
| Increased diver inspections | Helpful but not scalable; 2-3 inspections per week per site insufficient |
| Environmental sensors | Detect water quality but not fish behavior; late indicator |
| Sampling protocols | Lab results take 24-48 hours; too slow for early intervention |

---

## 2. Discovery

### Stakeholder Interviews

| Stakeholder | Key Insights |
|-------------|--------------|
| **Site Manager** | "The fish tell us something is wrong days before we see dead fish. They swim differently, feed differently. We just can't watch 2 million fish constantly." |
| **Fish Health Veterinarian** | "If I could see a problem 48 hours earlier, I could intervene with treatment before it spreads. The difference between losing 5,000 fish and 50,000 fish is early detection." |
| **Feed Operations** | "We track feed consumption daily. When fish are sick, consumption drops—but we only notice when the numbers come in next morning. By then it's 12-24 hours old." |
| **Diving Team** | "Experienced divers can see when a pen isn't right. But we have 120 pens and 4 divers. We can't be everywhere." |

### Data Audit Summary

| Data Source | Quality | Availability | Relevance |
|-------------|---------|--------------|-----------|
| Underwater cameras (existing) | Medium | 24/7 recording, poor lighting at depth | High |
| Feed consumption logs | Good | Daily aggregates, hourly available | High |
| Environmental sensors (O2, temp, salinity) | Good | Real-time, 5-min intervals | High |
| Mortality counts | Good | Daily counts by pen | High (for labeling) |
| Treatment records | Good | Event-based | Medium |
| Weather/current data | Good | External API | Medium |

**Key Finding:** Underwater cameras exist but footage is not analyzed. Hours of video recorded daily, reviewed only after problems detected.

### AI Readiness Assessment

| Dimension | Score | Notes |
|-----------|-------|-------|
| Data Infrastructure | 6/10 | Data exists but siloed; video storage is local only |
| Process Maturity | 5/10 | Experienced staff but informal processes |
| Technical Capability | 3/10 | No ML/AI experience; strong operations technology |
| Change Readiness | 8/10 | Desperate for solutions; prior tech investments |
| Leadership Alignment | 9/10 | CEO personally sponsoring after recent €400K loss event |
| **Overall** | **6.2/10** | Ready with significant technical support |

### Mortality Event Analysis

**Historical Analysis (2 years, all sites):**

| Event Type | Frequency | Avg Lead Time (current detection) | Avg Loss |
|------------|-----------|-----------------------------------|----------|
| Gill disease | 24/year | 36-48 hours after onset | €180K |
| Sea lice outbreak | 18/year | 48-72 hours after onset | €120K |
| Low oxygen event | 8/year | 2-4 hours after onset | €350K |
| Handling stress | 12/year | 12-24 hours after onset | €80K |
| Unknown/other | 10/year | Variable | €150K |

---

## 3. Definition

### Pilot Scope

**In Scope:**
- 2 farming sites (Site A - 12 pens, Site B - 15 pens)
- Computer vision analysis of feeding behavior
- Integration with environmental sensor data
- Real-time alerting to site managers
- Focus on gill disease and low oxygen events (highest impact)

**Out of Scope:**
- Sea lice detection (visual identification different approach)
- Treatment recommendation (veterinary decision)
- Automated intervention (e.g., emergency oxygenation)
- Other 6 sites (Phase 2)

### Success Criteria

| Level | Metric | Target |
|-------|--------|--------|
| **Primary: Early Detection Rate** | % of events detected >48 hrs before mortality spike | |
| Stretch Goal | | 75% |
| Target | | 60% |
| Minimum Viable Success | | 40% |
| **Secondary Metrics** | | |
| False positive rate | | <20% of alerts |
| Mean detection lead time | | >48 hours |
| System uptime | | >95% |

### Kill Criteria

| Criterion | Trigger | Owner |
|-----------|---------|-------|
| Camera/video quality | Unable to process >30% of footage | Technical Lead |
| False positive rate | >50% for 2 weeks | Site Manager |
| Missed major event | Mortality event >€100K not detected | Fish Health Vet |
| Infrastructure stability | System down >24 consecutive hours | IT |
| Staff rejection | Site teams refuse to use system | Site Manager |

### Baseline Measurement

**Period:** May - July 2024 (12 weeks pre-pilot)

**Sites A and B:**

| Metric | Value |
|--------|-------|
| Mortality events (detectable type) | 7 |
| Events detected >48 hrs early | 1 (14%) |
| Average detection lead time | 18 hours after onset |
| Average loss per event | €195,000 |

### Timeline

| Week | Phase | Key Activities |
|------|-------|----------------|
| 1-2 | Setup | Video pipeline, data integration, model environment |
| 3-5 | Build | Behavior detection model, anomaly algorithms |
| 6-7 | Validate | Historical event reconstruction, threshold tuning |
| 8-11 | Pilot | Live monitoring with alerting |
| 12 | Evaluate | Results analysis, decision |

---

## 4. Execution

### Week 1-2: Setup

**Activities:**
- Installed edge computing units at both sites for video processing
- Built video ingestion pipeline (720p, 1 fps sampling from 30 fps stream)
- Integrated environmental sensor feeds
- Created historical dataset with mortality events labeled

**Challenges:**
- Video quality degradation at depth due to particulates (resolved with preprocessing)
- Timestamp synchronization between systems (2 days to fix)
- Storage limitations required aggressive compression

**Infrastructure Architecture:**
```
Underwater Camera → Edge Device (on-site) → Preprocessing →
Cloud Model → Alert Engine → Site Manager Dashboard/SMS
```

### Week 3-5: Build

**Model Approach:**

Two-stage detection:

1. **Behavior Analysis (Computer Vision)**
   - Fish swimming pattern analysis (schooling cohesion, speed, depth distribution)
   - Feeding response detection (time to feed, consumption patterns)
   - Trained on labeled video segments around known mortality events

2. **Anomaly Detection (Multimodal)**
   - Combined behavior scores with environmental data
   - Isolation Forest for anomaly detection
   - Threshold calibration with fish health team

**Model Performance (Historical Validation):**

| Metric | Value |
|--------|-------|
| Events in historical data | 14 (across both sites, 2 years) |
| Detected >48 hrs early | 9 (64%) |
| Detected >24 hrs early | 12 (86%) |
| False positives (per week of data) | 2.3 |

### Week 6-7: Validation

**Method:** Ran model on 4 weeks of held-out historical data including 3 mortality events.

**Results:**

| Event | Actual Detection (historical) | Model Detection | Lead Time Improvement |
|-------|------------------------------|-----------------|----------------------|
| Event 1 (Gill) | 12 hrs before mortality spike | 58 hrs before | +46 hrs |
| Event 2 (Low O2) | 3 hrs before | 41 hrs before | +38 hrs |
| Event 3 (Gill) | 24 hrs before | 52 hrs before | +28 hrs |

**False Positives:** 7 alerts across 4 weeks (1.75/week)
- 4 were during unusual weather (storms causing behavior changes)
- 2 were equipment issues (camera drift)
- 1 was unexplained

**Week 7 Checkpoint:**
- Model detecting known events with meaningful lead time
- False positive rate acceptable
- Decision: Proceed to live pilot

### Week 8-11: Live Pilot

**Monitoring Protocol:**
- Automated alerts sent to site managers via SMS and dashboard
- All alerts logged and classified
- Weekly review with fish health veterinarian
- Post-event analysis for any mortality

**Event Summary:**

| Week | Alerts | True Positives | False Positives | Events Not Detected |
|------|--------|----------------|-----------------|---------------------|
| 8 | 3 | 1 | 2 | 0 |
| 9 | 2 | 1 | 1 | 0 |
| 10 | 4 | 2 | 2 | 1 (minor, <€20K) |
| 11 | 2 | 2 | 0 | 0 |
| **Total** | **11** | **6** | **5** | **1** |

**Key Events:**

**Week 8 - First Live Detection:**
> Site A, Pen 7: Alert triggered at 14:30 Thursday. Behavior anomaly score elevated (reduced schooling cohesion, delayed feeding response). Environmental data normal. Site manager deployed divers Friday morning—observed lethargy in fish. Veterinarian diagnosed early gill disease. Treatment initiated Friday afternoon. Estimated 15,000 fish saved (€40K) vs. typical late detection.

**Week 9 - Low Oxygen Event:**
> Site B, Pen 12: Alert triggered at 03:15 (night). Combined behavior and environmental anomaly—O2 dropping while fish showed surface congregation. On-call manager notified, activated emergency aerators within 90 minutes. Morning mortality count: 230 fish. Historical similar events: 3,000-5,000 fish. Estimated €85K saved.

**Week 10 - Missed Event:**
> Site A, Pen 3: Mortality spike detected in daily counts (2,100 fish). Model had shown elevated scores but below alert threshold. Post-analysis: behavior change was subtle and gradual. Threshold sensitivity adjusted. Loss: €19K.

**Week 11 - Improved Detection:**
> Two events detected with new thresholds. Both confirmed as early-stage issues. Treatment initiated before significant mortality.

### Metrics During Pilot

| Metric | Baseline | Pilot | Change |
|--------|----------|-------|--------|
| Events (mortality >€20K) | — | 7 | — |
| Detected >48 hrs early | 14% | 67% | +53pp |
| Average lead time | 18 hrs | 54 hrs | +36 hrs |
| Estimated loss (pilot events) | €195K avg | €45K avg | -77% |

---

## 5. Results

### Primary Metric: Early Detection Rate

| Measure | Value |
|---------|-------|
| Mortality events during pilot (>€20K impact) | 6 detected + 1 missed = 7 |
| Events detected >48 hrs in advance | 4 of 6 detected = 67% |
| **Target** | **60%** |
| Result vs Target | **Exceeded by 7pp** |

**Note:** The missed event (Week 10) was below €20K impact. Including it: 4 of 7 = 57%, still above MVS.

### Secondary Metrics

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| False positive rate | <20% | 45% (5/11) | ⚠️ Above target |
| Mean detection lead time | >48 hrs | 54 hrs | ✅ Exceeded |
| System uptime | >95% | 98.2% | ✅ Exceeded |

**False Positive Analysis:**
- Rate improved from 50% (Week 8-9) to 17% (Week 10-11) after threshold adjustment
- Remaining FPs mostly weather-related—can be further reduced with weather integration

### Guardrail Metrics

| Metric | Threshold | Actual | Status |
|--------|-----------|--------|--------|
| Staff rejection | Usability complaints | None reported | ✅ |
| Major event missed | >€100K undetected | None | ✅ |
| System causing issues | Negative operational impact | None | ✅ |

### Financial Impact

**Pilot Period (4 weeks):**

| Event | Without System (est.) | With System | Savings |
|-------|----------------------|-------------|---------|
| Event 1 (Gill) | €180K | €40K | €140K |
| Event 2 (Low O2) | €350K | €12K | €338K |
| Events 3-6 | €520K (combined est.) | €135K | €385K |
| Missed Event | €19K | €19K | €0 |
| **Total** | **€1,069K** | **€206K** | **€863K** |

**Pilot Cost:** €220K (infrastructure + development + personnel)

**Pilot ROI:** 292% (€863K savings / €220K cost - 1)

**Projected Annual Value (8 sites):**

| Item | Calculation | Value |
|------|-------------|-------|
| Annual events (all sites) | ~72 detectable events | |
| Early detection rate | 67% | |
| Events detected early | 48 | |
| Avg savings per early detection | €125K | |
| **Annual Savings** | 48 × €125K | **€6.0M** |
| Annual operating cost (8 sites) | | €350K |
| **Net Annual Benefit** | | **€5.65M** |

---

## 6. Lessons Learned

### What Worked Well

| Category | Learning |
|----------|----------|
| **Edge Computing** | Processing video on-site eliminated bandwidth issues and reduced latency. Critical for remote sites. |
| **Multi-modal Fusion** | Combining video behavior with environmental data dramatically reduced false positives. |
| **Domain Expert Involvement** | Fish health veterinarian's input on what to look for was invaluable. ML found patterns humans described. |
| **Night Detection** | Low-oxygen event at 03:15 would have been missed until morning. 24/7 monitoring proved essential. |
| **Threshold Tuning** | Week 10 adjustment based on missed event significantly improved Week 11 performance. |

### What Didn't Work

| Category | Learning | Recommendation |
|----------|----------|----------------|
| **Initial False Positive Rate** | 45% FP rate early in pilot eroded some trust. | More extensive threshold tuning before go-live. Accept higher miss rate initially for lower FP rate. |
| **Weather Sensitivity** | Storms caused behavior changes that looked like health issues. | Integrate weather data as model input. Add "weather alert" status to suppress false alarms. |
| **Video Quality Variance** | Some pens had poor camera positioning or fouling. | Standardize camera installation; add automated quality monitoring. |
| **Single Alert Level** | Binary alert caused alert fatigue. | Implement tiered alerts: Watch / Warning / Critical. |

### Surprises

| Surprise | Implication |
|----------|-------------|
| **Feeding behavior most predictive** | Time-to-feed and consumption rate changes appeared earlier than swimming patterns. | Focus camera placement on feeding areas. Consider feed-specific sensors. |
| **Night events more severe** | 2 of 7 events started at night. Without system, would have been 8-12 hours until detection. | 24/7 monitoring is essential, not optional. |
| **Staff enthusiasm** | Site teams became advocates, actively providing feedback. | Early involvement creates ownership. |

---

## 7. Decision

### Go/No-Go Scoring

| Dimension | Score | Evidence |
|-----------|-------|----------|
| Technical Success | 4/5 | 67% detection, 54-hr lead time, stable system, FP rate needs work |
| Business Impact | 5/5 | €863K savings in 4 weeks, clear ROI |
| Scalability | 4/5 | Architecture proven, need infrastructure at 6 additional sites |
| Organizational Fit | 5/5 | Strong adoption, staff advocates, clear workflow integration |
| **Weighted Total** | **4.5/5** | |

### Decision: GO ✅

**Rationale:**
The pilot exceeded the primary detection target, demonstrated massive financial value (€863K in 4 weeks), and gained enthusiastic adoption from site staff. While the false positive rate was initially high, it improved significantly with tuning and has a clear path to further reduction.

### Scale Plan

| Phase | Sites | Timeline | Investment |
|-------|-------|----------|------------|
| Phase 1 (Complete) | Site A, B | Done | €220K |
| Phase 2 | Site C, D, E | Months 1-2 | €180K |
| Phase 3 | Site F, G, H | Months 3-4 | €150K |
| Optimization | All sites | Months 5-6 | €80K |
| **Total** | **8 sites** | **6 months** | **€630K** |

**Expected Annual Value at Full Scale:** €5.65M
**Payback Period:** <2 months after full deployment

### Conditions/Enhancements for Scale

| Enhancement | Priority | Timeline |
|-------------|----------|----------|
| Weather data integration | High | Phase 2 |
| Tiered alert system | High | Phase 2 |
| Sea lice detection module | Medium | Phase 3 |
| Mobile app for alerts | Medium | Phase 3 |
| Predictive maintenance for cameras | Low | Post-scale |

---

## 8. Artifacts

### Pilot Documentation
- Pilot Scope Document
- Site Assessment Reports (A and B)
- Weekly Monitoring Logs
- Event Analysis Reports
- Veterinary Validation Notes

### Technical Artifacts
- Edge Computing Deployment Guide
- Model Training Documentation
- Alert Threshold Configuration
- Video Quality Requirements Specification
- API Documentation

### Templates Created
- Alert Response Protocol
- Event Post-Mortem Template
- Camera Installation Checklist
- Model Retraining Schedule

---

## Key Takeaways for Future Pilots

1. **Edge computing enables remote/industrial AI** - Can't always rely on cloud connectivity
2. **Multi-modal beats single-source** - Combining video with sensors dramatically improved accuracy
3. **Night/off-hours monitoring is valuable** - Automated systems catch what humans miss
4. **Domain experts are essential** - They know what patterns matter before you train models
5. **False positives erode trust quickly** - Better to start conservative and tune
6. **Immediate financial impact accelerates adoption** - €338K saved in one event sold the system
7. **24/7 operations need 24/7 systems** - Critical detection can't wait for business hours
