# Risk Register Template

> "Risks you identify and manage are risks you survive. Risks you ignore become crises."

## Purpose

The risk register is a living document that:
- Captures all identified risks
- Tracks mitigation status
- Provides early warning
- Documents risk decisions
- Creates accountability for risk management

---

## Risk Register Structure

```markdown
# [Pilot Name] - Risk Register

## Overview

| Total Risks | Critical | High | Medium | Low | Retired |
|-------------|----------|------|--------|-----|---------|
| [N] | [N] | [N] | [N] | [N] | [N] |

**Last Updated:** [YYYY-MM-DD]
**Risk Owner:** [Name]

---

## Active Risks

### Risk ID: R001
**Risk:** [Clear statement of what could go wrong]

| Attribute | Value |
|-----------|-------|
| **Category** | Technical / Data / Organizational / Resource / External |
| **Probability** | High (>70%) / Medium (30-70%) / Low (<30%) |
| **Impact** | Critical / High / Medium / Low |
| **Priority** | [Probability × Impact] Critical / High / Medium / Low |
| **Status** | Open / Mitigating / Watching / Closed |
| **Owner** | [Name] |
| **Identified Date** | [YYYY-MM-DD] |
| **Target Resolution** | [YYYY-MM-DD] |

**Trigger/Early Warning:**
[How will we know this risk is materializing?]

**Impact if Realized:**
- [Impact on timeline]
- [Impact on quality/results]
- [Impact on resources/budget]
- [Impact on stakeholders]

**Mitigation Plan:**
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| [Action 1] | [Name] | [Date] | ⬜ |
| [Action 2] | [Name] | [Date] | ⬜ |

**Contingency Plan (if risk materializes):**
[What we will do if this happens despite mitigation]

**Notes/Updates:**
| Date | Update |
|------|--------|
| [Date] | [Status update or change] |

---

### Risk ID: R002
[Repeat structure for each risk]

---

## Risk Summary Matrix

|                | Low Impact | Medium Impact | High Impact | Critical Impact |
|----------------|------------|---------------|-------------|-----------------|
| **High Prob**  | [R00X]     | [R00X]        | [R00X]      | [R00X]          |
| **Med Prob**   | [R00X]     | [R00X]        | [R00X]      | [R00X]          |
| **Low Prob**   | [R00X]     | [R00X]        | [R00X]      | [R00X]          |

---

## Retired Risks

| Risk ID | Risk Description | Reason Retired | Date |
|---------|------------------|----------------|------|
| R00X | [Brief description] | [Mitigated / Occurred / No longer relevant] | [Date] |

---

## Risk Decisions Log

| Date | Risk | Decision | Rationale | Decider |
|------|------|----------|-----------|---------|
| | | [Accept / Mitigate / Avoid / Transfer] | | |
```

---

## Risk Categories

### Technical Risks

| Risk Type | Examples |
|-----------|----------|
| **Model Performance** | Accuracy doesn't meet threshold; performance degrades in production |
| **Integration** | Systems don't connect; APIs unavailable; data sync issues |
| **Scalability** | Solution works in pilot but not at scale |
| **Security** | Vulnerabilities introduced; data exposure |
| **Infrastructure** | Platform instability; performance issues |

### Data Risks

| Risk Type | Examples |
|-----------|----------|
| **Quality** | Missing data; inaccurate labels; data drift |
| **Availability** | Cannot access needed data; data not ready in time |
| **Volume** | Not enough data for statistical significance |
| **Privacy** | PII handling violations; consent issues |
| **Freshness** | Data too stale for use case |

### Organizational Risks

| Risk Type | Examples |
|-----------|----------|
| **Change Resistance** | Users won't adopt; stakeholder opposition |
| **Sponsor Loss** | Sponsor leaves or loses interest |
| **Process Change** | Underlying process changes during pilot |
| **Competing Priorities** | Pilot deprioritized; resources pulled |
| **Political** | Stakeholder conflict; turf battles |

### Resource Risks

| Risk Type | Examples |
|-----------|----------|
| **Availability** | Key people unavailable; competing demands |
| **Skills** | Missing expertise; learning curve |
| **Budget** | Cost overruns; budget cuts |
| **Vendor** | Third-party delivery issues; contract problems |

### External Risks

| Risk Type | Examples |
|-----------|----------|
| **Regulatory** | New compliance requirements; audit findings |
| **Market** | Business context changes; opportunity window closes |
| **Vendor** | Vendor changes product; pricing changes |
| **Economic** | Budget freeze; strategic pivot |

---

## Risk Assessment Criteria

### Probability Assessment

| Level | Probability | Indicators |
|-------|-------------|------------|
| **High** | >70% | Almost certain; has happened before; clear warning signs |
| **Medium** | 30-70% | Possible; some evidence; depends on variables |
| **Low** | <30% | Unlikely; rare occurrence; multiple controls in place |

### Impact Assessment

| Level | Timeline Impact | Quality/Results Impact | Resource Impact |
|-------|-----------------|------------------------|-----------------|
| **Critical** | >4 week delay OR pilot failure | Kill criteria triggered | >50% budget overrun |
| **High** | 2-4 week delay | Results significantly compromised | 25-50% budget overrun |
| **Medium** | 1-2 week delay | Results moderately affected | 10-25% budget overrun |
| **Low** | <1 week delay | Minor impact on results | <10% budget overrun |

### Priority Matrix

| Probability ↓ / Impact → | Low | Medium | High | Critical |
|--------------------------|-----|--------|------|----------|
| **High** | Medium | High | Critical | Critical |
| **Medium** | Low | Medium | High | Critical |
| **Low** | Low | Low | Medium | High |

---

## Risk Response Strategies

### Response Types

| Strategy | When to Use | Example |
|----------|-------------|---------|
| **Avoid** | High impact, can eliminate trigger | Change scope to exclude risky component |
| **Mitigate** | Can reduce probability or impact | Implement controls, add redundancy |
| **Transfer** | Someone else better positioned | Insurance, vendor contract terms |
| **Accept** | Low impact or cost of mitigation exceeds impact | Document and monitor |

### Mitigation Action Types

| Type | Description | Example |
|------|-------------|---------|
| **Preventive** | Reduce probability | Training, process checks |
| **Detective** | Early warning | Monitoring, alerts |
| **Corrective** | Reduce impact | Backup plans, rollback procedures |

---

## Risk Monitoring Process

### Weekly Risk Review

During weekly pilot review:

1. **Review open risks** (5 min)
   - Any probability/impact changes?
   - Any new triggers observed?
   - Mitigation actions on track?

2. **Identify new risks** (3 min)
   - What new risks emerged this week?
   - Any near-misses to learn from?

3. **Update register** (2 min)
   - Add new risks
   - Update status of existing
   - Retire resolved risks

### Risk Escalation Triggers

Escalate to sponsor immediately if:

| Trigger | Action |
|---------|--------|
| Critical risk identified | Notify within 24 hours |
| Risk probability increases to High | Include in next sponsor update |
| Risk materializes | Immediate notification |
| Mitigation blocked | Request sponsor intervention |
| Multiple related risks emerging | Pattern review meeting |

---

## Common Pilot Risks

### Pre-Built Risk Library

Copy and customize these common risks:

```markdown
### R-DATA-01: Data Quality Issues
**Risk:** Data quality is insufficient for model training/validation
**Category:** Data
**Typical Probability:** Medium
**Typical Impact:** High
**Mitigation:** Conduct thorough data audit before pilot; build in data cleaning time

### R-DATA-02: Data Access Delays
**Risk:** Cannot obtain timely access to required data
**Category:** Data
**Typical Probability:** High
**Typical Impact:** High
**Mitigation:** Start access requests immediately; escalate early; have backup data plan

### R-TECH-01: Model Accuracy Ceiling
**Risk:** Model cannot achieve required accuracy despite optimization
**Category:** Technical
**Typical Probability:** Medium
**Typical Impact:** Critical
**Mitigation:** Set realistic targets; build in pivot option; validate approach early

### R-TECH-02: Integration Complexity
**Risk:** Integration with existing systems more difficult than expected
**Category:** Technical
**Typical Probability:** High
**Typical Impact:** Medium
**Mitigation:** Technical discovery early; prototype integrations; have manual fallback

### R-ORG-01: User Adoption Resistance
**Risk:** End users resist or refuse to use the solution
**Category:** Organizational
**Typical Probability:** Medium
**Typical Impact:** High
**Mitigation:** Involve users early; address concerns; demonstrate value; provide training

### R-ORG-02: Sponsor Disengagement
**Risk:** Executive sponsor becomes unavailable or loses interest
**Category:** Organizational
**Typical Probability:** Low
**Typical Impact:** Critical
**Mitigation:** Regular sponsor touchpoints; demonstrate progress; align to sponsor goals

### R-RES-01: Key Person Unavailable
**Risk:** Critical team member or SME becomes unavailable
**Category:** Resource
**Typical Probability:** Medium
**Typical Impact:** High
**Mitigation:** Cross-train; document knowledge; identify backups

### R-RES-02: Budget Constraints
**Risk:** Pilot budget cut or frozen
**Category:** Resource
**Typical Probability:** Low
**Typical Impact:** High
**Mitigation:** Demonstrate ROI early; have scaled-back option; secure commitment

### R-EXT-01: Regulatory Change
**Risk:** New regulations impact pilot approach
**Category:** External
**Typical Probability:** Low
**Typical Impact:** Medium-High
**Mitigation:** Monitor regulatory landscape; build compliance into design

### R-SCOPE-01: Scope Creep
**Risk:** Scope expands beyond original definition
**Category:** Organizational
**Typical Probability:** High
**Typical Impact:** Medium
**Mitigation:** Clear scope document; change control process; firm "no" to additions
```

---

## Risk Register Review Checklist

### Weekly Review

- [ ] All risks reviewed for status changes
- [ ] New risks identified and added
- [ ] Mitigation actions checked for progress
- [ ] Approaching risks flagged
- [ ] Retired risks documented
- [ ] Register updated and saved

### Bi-Weekly (Sponsor Update)

- [ ] Critical and high risks summarized
- [ ] New escalations communicated
- [ ] Mitigation progress reported
- [ ] Sponsor action items identified
- [ ] Decisions needed flagged

### Monthly Review

- [ ] Full risk portfolio reviewed
- [ ] Probability/impact reassessed
- [ ] Mitigation effectiveness evaluated
- [ ] Trends analyzed (risks increasing/decreasing?)
- [ ] Lessons learned captured
- [ ] Process improvements identified

---

## Risk Communication

### In Status Updates

```markdown
## Risks & Issues

**⚠️ Critical/High Risks:**
- **[Risk Name]**: [One-line description] — [Status]
  - Mitigation: [Current action]
  - Trend: [Increasing ↑ / Stable → / Decreasing ↓]

**ℹ️ Watching:**
- [Risk Name]: [Brief description]

**✅ Recently Closed:**
- [Risk Name]: [How resolved]
```

### For Escalation

```markdown
## Risk Escalation: [Risk Name]

**Risk ID:** R00X
**Status:** [Materializing / Probability increased / Mitigation blocked]

**Current Situation:**
[What is happening now]

**Impact if Not Addressed:**
[Specific consequences]

**Request:**
[Specific action needed from recipient]

**Options:**
1. [Option A] - [Implications]
2. [Option B] - [Implications]

**Recommendation:** [What you suggest]

**Deadline for Decision:** [Date/time]
```

---

## Risk Report Template

```markdown
# [Pilot Name] - Risk Report
## As of [Date]

### Risk Summary

| Status | Count |
|--------|-------|
| Critical Priority | [N] |
| High Priority | [N] |
| Medium Priority | [N] |
| Low Priority | [N] |
| Total Active | [N] |
| Retired This Period | [N] |

### Top Risks

| Rank | Risk | Probability | Impact | Trend | Owner |
|------|------|-------------|--------|-------|-------|
| 1 | [Name] | H/M/L | C/H/M/L | ↑→↓ | [Name] |
| 2 | [Name] | H/M/L | C/H/M/L | ↑→↓ | [Name] |
| 3 | [Name] | H/M/L | C/H/M/L | ↑→↓ | [Name] |

### Changes This Period

**New Risks:**
- R00X: [Description]

**Escalated:**
- R00X: [Reason for escalation]

**De-escalated:**
- R00X: [Reason for de-escalation]

**Retired:**
- R00X: [Reason retired]

### Mitigation Progress

| Risk | Action | Due | Status |
|------|--------|-----|--------|
| R001 | [Action] | [Date] | 🟢🟡🔴 |
| R002 | [Action] | [Date] | 🟢🟡🔴 |

### Decisions Needed

| Risk | Decision Required | Options | Deadline |
|------|-------------------|---------|----------|
| R00X | [Decision] | [A, B, C] | [Date] |
```
