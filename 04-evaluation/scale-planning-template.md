# Scale Planning Template

> "A successful pilot is just the beginning. Scaling is where value is realized—or lost."

## Purpose

This template guides the transition from successful pilot to full-scale production. It addresses:
- Technical readiness for scale
- Organizational change management
- Resource and budget planning
- Risk mitigation for rollout
- Success measurement at scale

---

## Scale Planning Overview

### Key Questions to Answer

| Question | Answer |
|----------|--------|
| What is the target scope for scale? | [Full org / Regions / Business units] |
| What is the timeline for full scale? | [X months] |
| What resources are required? | [People, technology, budget] |
| What are the key risks? | [Top 3 risks] |
| How will success be measured at scale? | [Metrics and targets] |

### Scale Phases

| Phase | Duration | Focus |
|-------|----------|-------|
| **1. Stabilization** | 2-4 weeks | Harden pilot solution for production |
| **2. Preparation** | 4-8 weeks | Build capacity, train, prepare organization |
| **3. Controlled Rollout** | 4-12 weeks | Phased expansion with monitoring |
| **4. Full Scale** | Ongoing | Complete deployment, continuous improvement |

---

## Phase 1: Stabilization

### Technical Hardening Checklist

| Item | Status | Owner | Notes |
|------|--------|-------|-------|
| **Performance** | | | |
| Load testing at 2x production volume | ⬜ | | |
| Response time within SLA | ⬜ | | |
| Resource scaling plan defined | ⬜ | | |
| **Reliability** | | | |
| Error handling comprehensive | ⬜ | | |
| Fallback/graceful degradation | ⬜ | | |
| Disaster recovery plan | ⬜ | | |
| Monitoring and alerting | ⬜ | | |
| **Security** | | | |
| Security review complete | ⬜ | | |
| Access controls implemented | ⬜ | | |
| Data protection verified | ⬜ | | |
| **Operations** | | | |
| Runbooks documented | ⬜ | | |
| On-call rotation defined | ⬜ | | |
| Incident response plan | ⬜ | | |
| **Code Quality** | | | |
| Code review complete | ⬜ | | |
| Technical debt addressed | ⬜ | | |
| Documentation updated | ⬜ | | |

### Pilot-to-Production Gap Analysis

| Area | Pilot State | Production Requirement | Gap | Resolution |
|------|-------------|------------------------|-----|------------|
| Volume | [X/day] | [Y/day] | [Y-X] | [How to scale] |
| Availability | [X%] | [Y%] | [Gap] | [How to improve] |
| Latency | [Xms] | [Yms] | [Gap] | [How to optimize] |
| Data freshness | [X hours] | [Y hours] | [Gap] | [How to reduce] |
| Support model | [Pilot team] | [Production team] | [Transition] | [Plan] |

---

## Phase 2: Preparation

### Rollout Strategy

| Strategy | When to Use | Pros | Cons |
|----------|-------------|------|------|
| **Big Bang** | Low risk, simple solution | Fast, clean cutover | High risk if issues |
| **Phased by Geography** | Regional variations, risk mitigation | Contained risk, learnings | Longer timeline |
| **Phased by Function** | Different use cases, complexity | Focused, manageable | Potential integration issues |
| **Phased by Volume %** | Need to manage capacity | Controlled growth | Parallel systems |
| **Parallel Run** | High risk, must validate | Safety net | Expensive, confusing |

### Rollout Plan Template

```markdown
## Rollout Strategy: [Strategy Name]

### Phase 1: [Name]
- **Scope:** [What's included]
- **Volume:** [% of total]
- **Timeline:** [Start] to [End]
- **Success Criteria:** [Metrics to achieve before next phase]
- **Rollback Trigger:** [What would cause rollback]

### Phase 2: [Name]
- **Scope:** [What's included]
- **Volume:** [% of total]
- **Timeline:** [Start] to [End]
- **Success Criteria:** [Metrics to achieve before next phase]
- **Rollback Trigger:** [What would cause rollback]

### Phase 3: [Name]
- **Scope:** [Full scale]
- **Volume:** [100%]
- **Timeline:** [Start] to [End]
- **Success Criteria:** [Full production metrics]

### Rollout Timeline Visual

[Gantt chart or timeline showing phases]
```

### Change Management Plan

```markdown
## Change Management Plan

### Stakeholder Impact Assessment

| Stakeholder Group | Impact Level | Key Concerns | Engagement Strategy |
|-------------------|--------------|--------------|---------------------|
| [Group 1] | High/Med/Low | [Concerns] | [Strategy] |
| [Group 2] | High/Med/Low | [Concerns] | [Strategy] |

### Communication Plan

| Audience | Message | Channel | Timing | Owner |
|----------|---------|---------|--------|-------|
| Executives | [Key message] | [Email/Meeting] | [When] | [Name] |
| Managers | [Key message] | [Channel] | [When] | [Name] |
| End Users | [Key message] | [Channel] | [When] | [Name] |
| Customers (if applicable) | [Key message] | [Channel] | [When] | [Name] |

### Training Plan

| Role | Training Type | Duration | Delivery | By When |
|------|---------------|----------|----------|---------|
| [Role 1] | [e.g., Hands-on workshop] | [X hours] | [In-person/Virtual] | [Date] |
| [Role 2] | [e.g., Self-paced module] | [X hours] | [Online] | [Date] |

### Support Model

| Phase | Support Level | Team | Hours | Escalation Path |
|-------|---------------|------|-------|-----------------|
| Rollout | High-touch | [Team] | [Coverage] | [Path] |
| Stabilization | Enhanced | [Team] | [Coverage] | [Path] |
| Steady State | Standard | [Team] | [Coverage] | [Path] |
```

---

## Phase 3: Controlled Rollout

### Rollout Readiness Checklist

```markdown
## Rollout Readiness Review

### Pre-Rollout Checklist

**Technical Readiness:**
- [ ] Production environment ready
- [ ] Data migration complete (if applicable)
- [ ] Integrations tested end-to-end
- [ ] Performance testing passed
- [ ] Monitoring and alerting active
- [ ] Rollback procedure tested

**Operational Readiness:**
- [ ] Support team trained
- [ ] Runbooks reviewed and accessible
- [ ] On-call schedule published
- [ ] Escalation paths confirmed
- [ ] Communication channels established

**Organizational Readiness:**
- [ ] Users trained
- [ ] Managers briefed
- [ ] FAQs and help materials published
- [ ] Feedback channel established
- [ ] Success metrics baseline captured

**Governance:**
- [ ] Sponsor sign-off obtained
- [ ] Compliance review complete
- [ ] Risk assessment updated
- [ ] Rollback decision authority confirmed

### Go/No-Go Decision

**Readiness Score:** [X] of [Y] items complete

**Decision:** ☐ GO | ☐ DELAY

**Signed:** _________________ Date: _________
```

### Rollout Monitoring

```markdown
## Rollout Monitoring Plan

### Key Metrics to Track

| Metric | Target | Yellow Threshold | Red Threshold | Frequency |
|--------|--------|------------------|---------------|-----------|
| [Technical: Uptime] | 99.9% | <99.5% | <99% | Real-time |
| [Technical: Latency] | <500ms | >750ms | >1000ms | Real-time |
| [Technical: Error rate] | <1% | >2% | >5% | Real-time |
| [Business: Primary metric] | [Target] | [Yellow] | [Red] | Daily |
| [Adoption: Usage rate] | 80% | <60% | <40% | Daily |
| [Support: Ticket volume] | <X/day | >Y/day | >Z/day | Daily |

### Rollout Dashboard

[Link to real-time monitoring dashboard]

### Daily Rollout Review

**Time:** [Daily time]
**Attendees:** [Rollout team]
**Duration:** 15 minutes

**Agenda:**
1. Metrics review (5 min)
2. Issues and incidents (5 min)
3. User feedback (3 min)
4. Go/No-Go for next phase (2 min)
```

### Rollback Plan

```markdown
## Rollback Plan

### Rollback Triggers

| Trigger | Threshold | Decision Maker |
|---------|-----------|----------------|
| System availability | <95% for >1 hour | [Name] |
| Critical errors | >X per hour | [Name] |
| Business impact | [Specific condition] | [Name] |
| User safety concern | Any | [Name] |

### Rollback Procedure

**Estimated Rollback Time:** [X hours]

**Steps:**
1. [Step 1 - with responsible party]
2. [Step 2]
3. [Step 3]
4. [Step 4]
5. [Verification step]

**Communication on Rollback:**
- [Who to notify]
- [Message template]
- [Channel]

### Post-Rollback Actions

1. Incident review within 24 hours
2. Root cause analysis within 48 hours
3. Remediation plan before re-rollout
4. Updated readiness checklist
```

---

## Phase 4: Full Scale Operations

### Production Ownership Transition

```markdown
## Production Ownership

### Roles and Responsibilities

| Role | Owner | Responsibilities |
|------|-------|------------------|
| Product Owner | [Name] | Roadmap, priorities, stakeholder management |
| Technical Owner | [Name] | Architecture, performance, reliability |
| Operations Owner | [Name] | Day-to-day operations, incident response |
| Data Owner | [Name] | Data quality, pipelines, model monitoring |
| Business Owner | [Name] | Value realization, success measurement |

### Knowledge Transfer Checklist

| Item | Status | Notes |
|------|--------|-------|
| Architecture documentation | ⬜ | |
| Runbooks and procedures | ⬜ | |
| Codebase walkthrough | ⬜ | |
| Monitoring and alerting overview | ⬜ | |
| Known issues and workarounds | ⬜ | |
| Stakeholder introductions | ⬜ | |
| Vendor contacts (if applicable) | ⬜ | |
| Access and permissions | ⬜ | |

### Shadow Period

- **Duration:** [2-4 weeks recommended]
- **Model:** Pilot team remains available for support
- **Escalation:** Direct line to pilot team for issues
- **End Criteria:** Production team independently handles all scenarios
```

### Continuous Improvement

```markdown
## Continuous Improvement Plan

### Model Monitoring

| Metric | Frequency | Threshold for Action | Owner |
|--------|-----------|----------------------|-------|
| Accuracy/performance | Daily | <[X]% | [Name] |
| Data drift | Weekly | [Threshold] | [Name] |
| Feature importance shift | Monthly | [Threshold] | [Name] |
| Prediction distribution | Weekly | [Threshold] | [Name] |

### Model Retraining Triggers

| Trigger | Condition | Action |
|---------|-----------|--------|
| Scheduled | Every [X] months | Evaluate new training data, retrain if beneficial |
| Performance degradation | [Metric] drops below [X] | Investigate and retrain |
| Business change | New products/processes | Evaluate impact, retrain if needed |

### Feedback Loop

| Feedback Type | Collection Method | Frequency | Owner |
|---------------|-------------------|-----------|-------|
| User satisfaction | Survey | Quarterly | [Name] |
| Prediction errors | Manual review sample | Monthly | [Name] |
| Feature requests | Ticket system | Ongoing | [Name] |
| Business impact | KPI review | Monthly | [Name] |

### Enhancement Roadmap

| Priority | Enhancement | Business Value | Estimated Effort | Target Date |
|----------|-------------|----------------|------------------|-------------|
| P1 | [Enhancement 1] | [Value] | [Effort] | [Date] |
| P2 | [Enhancement 2] | [Value] | [Effort] | [Date] |
| P3 | [Enhancement 3] | [Value] | [Effort] | [Date] |
```

---

## Resource Planning

### Staffing Plan

```markdown
## Staffing Requirements

### Phase Staffing

| Role | Stabilization | Preparation | Rollout | Steady State |
|------|---------------|-------------|---------|--------------|
| Project Manager | 100% | 100% | 50% | 0% |
| Technical Lead | 100% | 100% | 50% | 20% |
| Engineers | [X] FTE | [X] FTE | [X] FTE | [X] FTE |
| Data Scientists | [X] FTE | [X] FTE | [X] FTE | [X] FTE |
| Operations | 0% | 50% | 100% | 100% |
| Training | 0% | 100% | 50% | 10% |
| Support | 0% | 50% | 100% | [X] FTE |

### Key Personnel

| Role | Name | Availability | Backup |
|------|------|--------------|--------|
| Sponsor | | | |
| Project Lead | | | |
| Technical Lead | | | |
| Operations Lead | | | |
```

### Budget

```markdown
## Scale Budget

### One-Time Costs

| Category | Item | Cost | Notes |
|----------|------|------|-------|
| Technology | [Infrastructure expansion] | $[X] | |
| Technology | [Licensing] | $[X] | |
| Services | [Implementation support] | $[X] | |
| Training | [Development and delivery] | $[X] | |
| Change Management | [Communications, events] | $[X] | |
| Contingency (15%) | | $[X] | |
| **Total One-Time** | | **$[X]** | |

### Ongoing Annual Costs

| Category | Item | Annual Cost | Notes |
|----------|------|-------------|-------|
| Infrastructure | [Compute, storage] | $[X] | |
| Licensing | [Software, API] | $[X] | |
| Personnel | [Operations team] | $[X] | |
| Support | [Internal/external] | $[X] | |
| Maintenance | [Enhancements, fixes] | $[X] | |
| **Total Annual** | | **$[X]** | |

### Business Case at Scale

| Metric | Pilot | At Scale | Calculation |
|--------|-------|----------|-------------|
| Volume | [X]/day | [Y]/day | [Y/X]x increase |
| Benefit per unit | $[X] | $[X] | [Assumption] |
| Annual benefit | $[X] | $[Y] | [Calculation] |
| Annual cost | $[X] | $[Y] | [From above] |
| Net annual benefit | $[X] | $[Y] | Benefit - Cost |
| ROI | [X]x | [Y]x | Benefit / Cost |
| Payback period | [X] months | [Y] months | Cost / Monthly benefit |
```

---

## Risk Management at Scale

```markdown
## Scale Risk Assessment

### Top Risks

| Risk | Probability | Impact | Mitigation | Owner |
|------|-------------|--------|------------|-------|
| Performance at scale | M | H | Load testing, auto-scaling | [Name] |
| User adoption | M | H | Change management, training | [Name] |
| Integration issues | M | M | Phased rollout, testing | [Name] |
| Data quality at scale | L | H | Monitoring, validation | [Name] |
| Resource constraints | M | M | Advance planning, backup | [Name] |

### Contingency Plans

| Scenario | Trigger | Response |
|----------|---------|----------|
| Major outage | >1 hour downtime | [Response plan] |
| Performance degradation | Latency >2x SLA | [Response plan] |
| Adoption failure | <50% target adoption | [Response plan] |
| Budget overrun | >20% over budget | [Response plan] |
```

---

## Scale Planning Checklist

### Planning Phase
- [ ] Rollout strategy selected and documented
- [ ] Phased approach defined with criteria
- [ ] Resource plan complete
- [ ] Budget approved
- [ ] Risk assessment updated
- [ ] Sponsor sign-off obtained

### Preparation Phase
- [ ] Technical hardening complete
- [ ] Production environment ready
- [ ] Training program delivered
- [ ] Change management activities complete
- [ ] Support model established
- [ ] Rollback plan tested

### Rollout Phase
- [ ] Readiness review passed
- [ ] Monitoring active
- [ ] Daily reviews occurring
- [ ] Issues tracked and resolved
- [ ] Each phase success criteria met
- [ ] Rollback triggers monitored

### Full Scale Phase
- [ ] Ownership transitioned
- [ ] Knowledge transfer complete
- [ ] Continuous improvement plan active
- [ ] Success metrics tracked
- [ ] Feedback loop established

---

## See Also

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [`go-no-go-decision-matrix.md`](go-no-go-decision-matrix.md) | Decision documentation | Reference for scale justification |
| [`results-analysis-framework.md`](results-analysis-framework.md) | Pilot results | Reference for scale expectations |
| [`../tools/roi-calculator.md`](../tools/roi-calculator.md) | Updated business case | Calculate scale ROI |
| [`../governance/model-card-template.md`](../governance/model-card-template.md) | Model documentation | Document model for production |
| [`../governance/ai-ethics-checklist.md`](../governance/ai-ethics-checklist.md) | Ethics review | Re-validate at scale |
| [`../governance/bias-testing-protocol.md`](../governance/bias-testing-protocol.md) | Bias testing | Continuous monitoring at scale |
| [`lessons-learned-template.md`](lessons-learned-template.md) | Captured learnings | Apply lessons to scale plan |
