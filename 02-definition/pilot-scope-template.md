# Pilot Scope Template

> "A well-scoped pilot is half-won. An ill-defined pilot is already lost."

## Instructions

Complete every section before pilot kickoff. If you cannot fill a section with specifics, you are not ready to start. Vague scopes produce vague results.

---

## Pilot Identity

| Field | Value |
|-------|-------|
| **Pilot Name** | [Descriptive name, e.g., "Claims Triage Automation Pilot"] |
| **Pilot ID** | [Unique identifier, e.g., PILOT-2024-017] |
| **Sponsor** | [Executive sponsor name and title] |
| **Pilot Lead** | [Day-to-day owner name and title] |
| **Start Date** | [YYYY-MM-DD] |
| **End Date** | [YYYY-MM-DD — maximum 12 weeks from start] |
| **Version** | [Document version, e.g., 1.0] |
| **Last Updated** | [YYYY-MM-DD] |

---

## Problem Statement

### The Problem (Be Specific)

Write a single paragraph that answers:
- **Who** is affected?
- **What** is the pain point?
- **Where** does it occur in the process?
- **When** does it happen (frequency, triggers)?
- **Why** does it matter (business impact)?

> **Template:** "[Role/Team] currently spends [X hours/week] on [specific task], resulting in [quantified negative outcome]. This costs the organization [$ amount or metric impact] annually and causes [secondary effects]."

**Your Problem Statement:**

```
[Write here — be ruthlessly specific. "Improve efficiency" is not a problem statement.]
```

### Current State Baseline

| Metric | Current Value | Source | Measurement Date |
|--------|---------------|--------|------------------|
| Primary metric | | | |
| Volume/frequency | | | |
| Time spent | | | |
| Error rate | | | |
| Cost | | | |

**How baseline was measured:**
```
[Describe methodology — sampling period, data source, calculation method]
```

---

## Success Metrics

### Primary Metric (The ONE Number)

| Element | Value |
|---------|-------|
| **Metric Name** | |
| **Current Baseline** | |
| **Minimum Viable Success** | [Must hit to continue] |
| **Target Success** | [Expected outcome] |
| **Stretch Goal** | [Exceptional outcome] |
| **Measurement Method** | |
| **Measurement Frequency** | |
| **Data Source** | |

### Secondary Metrics

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| | | | |
| | | | |
| | | | |

### Guardrail Metrics (Must Not Degrade)

| Metric | Current Value | Maximum Acceptable Degradation |
|--------|---------------|-------------------------------|
| Quality/accuracy | | |
| Customer satisfaction | | |
| Compliance | | |

---

## Kill Criteria

> These are non-negotiable stopping conditions. If any trigger fires, the pilot stops immediately for review.

### Automatic Stop Triggers

| Category | Trigger Condition | Owner |
|----------|-------------------|-------|
| **Data Quality** | [e.g., "Source data accuracy drops below 85%"] | |
| **Technical** | [e.g., "System latency exceeds 5 seconds p95"] | |
| **Business** | [e.g., "Customer complaints increase by >20%"] | |
| **Timeline** | [e.g., "Core functionality not demonstrated by Week 4"] | |
| **Cost** | [e.g., "Pilot spend exceeds budget by >25%"] | |
| **Organizational** | [e.g., "Key stakeholder withdraws support"] | |

### Review Triggers (Pause and Assess)

| Condition | Response Protocol |
|-----------|-------------------|
| Primary metric shows no improvement by Week 4 | [Describe review process] |
| Resource availability drops below 50% | |
| Scope change requested | |

---

## Timeline

> Maximum pilot duration: 12 weeks. If you need longer, your scope is too big.

### Phase Breakdown

| Phase | Duration | Key Activities | Exit Criteria |
|-------|----------|----------------|---------------|
| **Setup** (Week 1-2) | 2 weeks | Environment, data access, team onboarding | All prerequisites complete |
| **Build** (Week 3-6) | 4 weeks | Core solution development | Working prototype |
| **Validate** (Week 7-10) | 4 weeks | Production testing, measurement | Statistically significant results |
| **Decide** (Week 11-12) | 2 weeks | Analysis, recommendation, handoff | Go/No-Go decision made |

### Key Milestones

| Week | Milestone | Deliverable | Decision Point |
|------|-----------|-------------|----------------|
| 2 | Setup Complete | Environment ready checklist | Proceed/Delay |
| 4 | First Results | Initial metrics report | Continue/Pivot/Stop |
| 8 | Midpoint Review | Progress report with trends | Continue/Adjust/Stop |
| 10 | Validation Complete | Statistical analysis | Prepare decision |
| 12 | Final Decision | Go/No-Go recommendation | Scale/Iterate/Sunset |

---

## Resource Requirements

### Team

| Role | Name | Time Commitment | Responsibilities |
|------|------|-----------------|------------------|
| Pilot Lead | | % FTE | Overall delivery, stakeholder management |
| Technical Lead | | % FTE | Solution architecture, implementation |
| Data Engineer | | % FTE | Data pipelines, integration |
| Domain Expert | | % FTE | Business logic, validation |
| Executive Sponsor | | Hours/week | Blocker removal, decisions |

### Technology

| Resource | Requirement | Status | Owner |
|----------|-------------|--------|-------|
| Compute | | | |
| Storage | | | |
| AI/ML Platform | | | |
| Data Access | | | |
| Development Tools | | | |

### Budget

| Category | Estimated Cost | Approval Status |
|----------|----------------|-----------------|
| Personnel (internal) | $ | |
| Technology/Infrastructure | $ | |
| External Services | $ | |
| Contingency (15%) | $ | |
| **Total** | **$** | |

---

## Scope Boundaries

### In Scope

| Item | Description |
|------|-------------|
| Process | [Specific process or subprocess] |
| Data | [Specific data sources] |
| Users | [Specific user groups] |
| Systems | [Specific systems integrated] |
| Geography | [Specific locations/regions] |
| Time Period | [Data from X to Y] |

### Explicitly Out of Scope

> Be aggressive here. Everything not listed above is out of scope.

| Item | Reason | Future Consideration |
|------|--------|---------------------|
| | | Phase 2 candidate? |
| | | Never? |
| | | Requires separate pilot? |

### Scope Change Protocol

1. All scope changes require written request
2. Impact assessment within 48 hours
3. Sponsor approval required for any change
4. Timeline/budget adjustments documented
5. No scope changes after Week 8 without re-baselining

---

## Dependencies

### Prerequisites (Must Complete Before Start)

| Dependency | Owner | Due Date | Status |
|------------|-------|----------|--------|
| Data access approved | | | ⬜ |
| Environment provisioned | | | ⬜ |
| Team allocated | | | ⬜ |
| Baseline measured | | | ⬜ |
| Stakeholders briefed | | | ⬜ |

### External Dependencies (During Pilot)

| Dependency | Owner | Risk if Delayed | Mitigation |
|------------|-------|-----------------|------------|
| | | | |

---

## Risks

| Risk | Likelihood (H/M/L) | Impact (H/M/L) | Mitigation Strategy | Owner |
|------|-------------------|----------------|---------------------|-------|
| Data quality issues | | | | |
| Resource availability | | | | |
| Technical complexity | | | | |
| Stakeholder resistance | | | | |
| Scope creep | | | | |

---

## Governance

### Decision Rights

| Decision Type | Decision Maker | Consulted | Informed |
|---------------|----------------|-----------|----------|
| Go/No-Go | Sponsor | | |
| Scope changes | Sponsor | Pilot Lead | |
| Technical approach | Technical Lead | | |
| Resource allocation | Pilot Lead | | |
| Budget adjustments | Sponsor | | |

### Communication Cadence

| Meeting | Frequency | Attendees | Purpose |
|---------|-----------|-----------|---------|
| Daily standup | Daily | Core team | Blockers, progress |
| Weekly review | Weekly | Extended team | Metrics, decisions |
| Sponsor update | Bi-weekly | Sponsor, Leads | Status, escalations |
| Steering committee | Monthly | Leadership | Strategic alignment |

---

## Sign-Off

> All parties must sign before pilot begins. No exceptions.

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Executive Sponsor | | | |
| Pilot Lead | | | |
| Technical Lead | | | |
| Domain Owner | | | |

---

## Appendices

### A. Glossary
[Define key terms used in this document]

### B. Reference Documents
[Link to related documents, prior analysis, etc.]

### C. Change Log

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | | | Initial version |
