# Go/No-Go Decision Matrix

> "The purpose of a pilot is to make a decision. Make it, and move on."

## Purpose

This matrix provides a structured framework for making the final pilot decision. It ensures:
- Consistent evaluation criteria
- Evidence-based decisions
- Clear documentation of rationale
- Appropriate stakeholder alignment

---

## Decision Framework Overview

### Decision Options

| Decision | Meaning | Typical Follow-up |
|----------|---------|-------------------|
| **GO** | Scale the solution | Planning for production rollout |
| **CONDITIONAL GO** | Scale with modifications | Address conditions, then scale |
| **ITERATE** | Continue piloting | New pilot with adjustments |
| **NO-GO** | Stop the initiative | Sunset and capture learnings |

### Decision Criteria Dimensions

| Dimension | Weight | What It Measures |
|-----------|--------|------------------|
| **Technical Success** | 30% | Did the solution work as intended? |
| **Business Impact** | 30% | Did it deliver expected value? |
| **Scalability** | 20% | Can it work at full scale? |
| **Organizational Fit** | 20% | Is the organization ready to adopt it? |

---

## Scoring Rubric

### Dimension 1: Technical Success (30%)

**Question:** Did the technical solution perform as required?

| Score | Criteria |
|-------|----------|
| **5 - Exceptional** | Exceeded all technical requirements. Performance better than expected. No significant issues. |
| **4 - Strong** | Met all technical requirements. Minor issues resolved during pilot. Production-ready. |
| **3 - Adequate** | Met core requirements. Some limitations identified. Workarounds available. |
| **2 - Weak** | Partially met requirements. Significant limitations. Major work needed for scale. |
| **1 - Failed** | Did not meet critical requirements. Fundamental technical problems. |

**Evidence Required:**
- [ ] Primary metric vs. target comparison
- [ ] Model accuracy/performance metrics
- [ ] System reliability/uptime data
- [ ] Error rates and exception handling
- [ ] Integration success with existing systems

**Score: [ ] / 5**

**Evidence Summary:**
```
[Document the evidence supporting this score]
```

---

### Dimension 2: Business Impact (30%)

**Question:** Did the pilot deliver meaningful business value?

| Score | Criteria |
|-------|----------|
| **5 - Exceptional** | Exceeded target success threshold. Clear, measurable business value. Strong ROI. |
| **4 - Strong** | Met target success threshold. Business case validated. Positive ROI. |
| **3 - Adequate** | Met minimum viable success. Business case holds with adjustments. Marginal ROI. |
| **2 - Weak** | Below minimum viable success. Business case questionable. ROI uncertain. |
| **1 - Failed** | No measurable business impact. Business case invalid. Negative ROI. |

**Evidence Required:**
- [ ] Primary metric improvement vs. MVS/Target/Stretch
- [ ] Secondary metrics performance
- [ ] Guardrail metrics (no degradation)
- [ ] ROI calculation
- [ ] Stakeholder feedback on value

**Score: [ ] / 5**

**Evidence Summary:**
```
[Document the evidence supporting this score]
```

---

### Dimension 3: Scalability (20%)

**Question:** Can this solution work at full production scale?

| Score | Criteria |
|-------|----------|
| **5 - Exceptional** | Scales easily. Tested at scale during pilot. No concerns about production volume. |
| **4 - Strong** | Clear path to scale. Minor infrastructure adjustments needed. Confident in approach. |
| **3 - Adequate** | Can scale with effort. Known challenges to address. Reasonable path forward. |
| **2 - Weak** | Significant scaling challenges. Architecture concerns. Substantial rework needed. |
| **1 - Failed** | Cannot scale. Fundamental design limitations. Would require rebuild. |

**Evidence Required:**
- [ ] Volume testing results
- [ ] Performance at pilot volume vs. production volume
- [ ] Infrastructure assessment
- [ ] Cost projections at scale
- [ ] Technical architecture review

**Score: [ ] / 5**

**Evidence Summary:**
```
[Document the evidence supporting this score]
```

---

### Dimension 4: Organizational Fit (20%)

**Question:** Is the organization ready to adopt and sustain this solution?

| Score | Criteria |
|-------|----------|
| **5 - Exceptional** | Strong user adoption. Clear ownership. Processes adapted. Change embraced. |
| **4 - Strong** | Good adoption. Owners identified. Some process changes needed. Positive reception. |
| **3 - Adequate** | Moderate adoption. Ownership questions. Change management needed. Mixed reception. |
| **2 - Weak** | Low adoption. Unclear ownership. Significant resistance. Major change barriers. |
| **1 - Failed** | Active resistance. No ownership. Process incompatibility. Cultural rejection. |

**Evidence Required:**
- [ ] User adoption metrics
- [ ] User feedback/satisfaction
- [ ] Training effectiveness
- [ ] Process integration status
- [ ] Identified owners for production

**Score: [ ] / 5**

**Evidence Summary:**
```
[Document the evidence supporting this score]
```

---

## Calculating the Decision Score

### Weighted Score Calculation

| Dimension | Weight | Score (1-5) | Weighted Score |
|-----------|--------|-------------|----------------|
| Technical Success | 30% | [ ] | [ ] × 0.30 = [ ] |
| Business Impact | 30% | [ ] | [ ] × 0.30 = [ ] |
| Scalability | 20% | [ ] | [ ] × 0.20 = [ ] |
| Organizational Fit | 20% | [ ] | [ ] × 0.20 = [ ] |
| **TOTAL** | **100%** | | **[ ] / 5.0** |

### Decision Thresholds

| Score Range | Decision | Criteria |
|-------------|----------|----------|
| **4.0 - 5.0** | **GO** | Strong performance across all dimensions |
| **3.0 - 3.9** | **CONDITIONAL GO** | Adequate performance, specific conditions required |
| **2.5 - 2.9** | **ITERATE** | Mixed results, worth another attempt with changes |
| **1.0 - 2.4** | **NO-GO** | Insufficient evidence of success |

### Automatic Decision Rules

Regardless of overall score:

| Condition | Automatic Decision |
|-----------|-------------------|
| Business Impact score = 1 | NO-GO |
| Technical Success score = 1 | NO-GO or ITERATE |
| Any guardrail metric breached | CONDITIONAL at best |
| Kill criterion triggered | Requires specific review |
| Scalability score = 1 | ITERATE at best |

---

## Decision Matrix Template

```markdown
# [Pilot Name] - Go/No-Go Decision

## Decision Summary

**Date:** [YYYY-MM-DD]
**Pilot Lead:** [Name]
**Decision Maker:** [Sponsor Name]

### Scores

| Dimension | Score | Key Evidence |
|-----------|-------|--------------|
| Technical Success (30%) | /5 | [One-line summary] |
| Business Impact (30%) | /5 | [One-line summary] |
| Scalability (20%) | /5 | [One-line summary] |
| Organizational Fit (20%) | /5 | [One-line summary] |
| **Weighted Total** | **/5** | |

### Decision

| | Option | Score Range | This Pilot |
|-|--------|-------------|------------|
| ☐ | GO | 4.0 - 5.0 | |
| ☐ | CONDITIONAL GO | 3.0 - 3.9 | |
| ☐ | ITERATE | 2.5 - 2.9 | |
| ☐ | NO-GO | 1.0 - 2.4 | |

### Decision: [GO / CONDITIONAL GO / ITERATE / NO-GO]

---

## Detailed Scoring

### Technical Success: [X] / 5

**Evidence:**
- Primary metric performance: [Result vs Target]
- System reliability: [Uptime %]
- Error rate: [%]
- Integration status: [Complete / Partial / Failed]

**Strengths:**
- [Strength 1]
- [Strength 2]

**Concerns:**
- [Concern 1]
- [Concern 2]

---

### Business Impact: [X] / 5

**Evidence:**
- Primary metric: [Baseline] → [Result] ([X]% improvement)
- Target: [Target]% | Result: [Achieved / Not achieved]
- MVS: [MVS]% | Result: [Achieved / Not achieved]
- Estimated annual value: $[X]

**Strengths:**
- [Strength 1]
- [Strength 2]

**Concerns:**
- [Concern 1]
- [Concern 2]

---

### Scalability: [X] / 5

**Evidence:**
- Pilot volume: [X] per day
- Production volume: [Y] per day
- Performance at scale: [Tested / Projected]
- Infrastructure changes needed: [None / Minor / Significant]

**Strengths:**
- [Strength 1]
- [Strength 2]

**Concerns:**
- [Concern 1]
- [Concern 2]

---

### Organizational Fit: [X] / 5

**Evidence:**
- User adoption rate: [X]%
- User satisfaction: [X/5 or X/10]
- Training completion: [X]%
- Identified production owner: [Yes/No - Name]

**Strengths:**
- [Strength 1]
- [Strength 2]

**Concerns:**
- [Concern 1]
- [Concern 2]

---

## Conditions (for Conditional Go)

| # | Condition | Owner | Due Date | Verification |
|---|-----------|-------|----------|--------------|
| 1 | [Condition to be met] | [Name] | [Date] | [How verified] |
| 2 | [Condition to be met] | [Name] | [Date] | [How verified] |

---

## Rationale

**Why this decision:**
[2-3 paragraphs explaining the decision rationale]

**Key factors in favor:**
1. [Factor 1]
2. [Factor 2]

**Key concerns addressed:**
1. [Concern 1] — [How addressed or accepted]
2. [Concern 2] — [How addressed or accepted]

**Risks of this decision:**
1. [Risk 1] — [Mitigation]
2. [Risk 2] — [Mitigation]

---

## Next Steps

| # | Action | Owner | Due Date |
|---|--------|-------|----------|
| 1 | [Next step] | [Name] | [Date] |
| 2 | [Next step] | [Name] | [Date] |
| 3 | [Next step] | [Name] | [Date] |

---

## Sign-Off

| Role | Name | Decision | Date |
|------|------|----------|------|
| Pilot Lead | [Name] | Recommends [Decision] | |
| Technical Lead | [Name] | Concurs / Notes concerns | |
| Business Owner | [Name] | Concurs / Notes concerns | |
| **Executive Sponsor** | [Name] | **APPROVES [Decision]** | |
```

---

## Decision Meeting Agenda

When convening the decision meeting:

### Pre-Meeting (Pilot Lead)
- Distribute decision matrix 48 hours in advance
- Ensure all evidence is documented
- Prepare presentation of key findings

### Meeting Agenda (60 minutes)

| Time | Topic | Owner |
|------|-------|-------|
| 5 min | Context and purpose | Pilot Lead |
| 15 min | Results summary | Pilot Lead |
| 10 min | Scoring review | Pilot Lead |
| 15 min | Discussion and questions | All |
| 10 min | Decision | Sponsor |
| 5 min | Next steps | Pilot Lead |

### Decision Meeting Rules

1. **Decision is made in meeting** — No deferrals without new information
2. **Evidence-based discussion** — Opinions supported by data
3. **Conditions must be specific** — Vague conditions are not conditions
4. **Sponsor decides** — After input, sponsor makes the call
5. **Decision is documented** — Written record before leaving room

---

## Post-Decision Actions

### If GO

| Action | Timeline | Owner |
|--------|----------|-------|
| Initiate scale planning | Within 1 week | Pilot Lead |
| Transition to production team | Within 2 weeks | Technical Lead |
| Communicate decision broadly | Within 48 hours | Sponsor |
| Archive pilot artifacts | Within 1 week | Pilot Lead |

### If CONDITIONAL GO

| Action | Timeline | Owner |
|--------|----------|-------|
| Document conditions clearly | Within 48 hours | Pilot Lead |
| Assign condition owners | Within 48 hours | Pilot Lead |
| Set condition review date | Within 1 week | Sponsor |
| Plan condition resolution | Within 1 week | Condition Owners |

### If ITERATE

| Action | Timeline | Owner |
|--------|----------|-------|
| Document what to change | Within 1 week | Pilot Lead |
| Define next pilot scope | Within 2 weeks | Pilot Lead |
| Secure continued resources | Within 1 week | Sponsor |
| Reset success criteria | Within 2 weeks | Team |

### If NO-GO

| Action | Timeline | Owner |
|--------|----------|-------|
| Communicate decision | Within 48 hours | Sponsor |
| Complete lessons learned | Within 1 week | Pilot Lead |
| Release resources | Within 1 week | Pilot Lead |
| Archive all documentation | Within 2 weeks | Pilot Lead |
| Celebrate learning, not failure | Immediately | Sponsor |

---

## Decision Justification Examples

### Example: GO Decision

> "The pilot achieved 35% improvement in processing time against a 25% target, with high statistical confidence (p<0.01). Technical performance was stable with 99.5% uptime. Users adopted the tool at 85% rate with positive feedback. The architecture scales linearly and cost projections are within budget. We recommend immediate scale planning."

### Example: CONDITIONAL GO Decision

> "The pilot met MVS (15% improvement) but fell short of target (25%). Technical performance was solid but user adoption was only 60%. We recommend proceeding to scale with two conditions: (1) Complete user training program with 80% completion target, (2) Implement requested UI changes before full rollout. Review in 4 weeks."

### Example: ITERATE Decision

> "Results were mixed—12% improvement vs. 25% target. Analysis suggests the model struggles with a specific transaction type (30% of volume). Technical team has identified an approach that may address this. We recommend a 4-week follow-on pilot focusing on this segment with the revised model, before making final decision."

### Example: NO-GO Decision

> "Despite technical success, the business impact was below minimum viable success (8% vs. 15% required). Root cause analysis indicates the addressable volume is smaller than anticipated—only 20% of transactions are eligible vs. 50% assumed. The revised business case does not support continued investment. We recommend sunsetting and redirecting resources."
