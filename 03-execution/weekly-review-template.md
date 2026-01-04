# Weekly Pilot Review Template

> "What gets reviewed gets done. What gets ignored drifts into failure."

## Purpose

Weekly reviews are the heartbeat of a well-run pilot. They ensure:
- Problems surface early, not at final review
- Metrics are tracked consistently
- Decisions are made at the right time
- Stakeholders stay aligned
- Kill criteria are monitored

---

## Meeting Format

| Element | Duration | Purpose |
|---------|----------|---------|
| Metrics Review | 15 min | Facts first—where do we stand? |
| Progress Update | 10 min | What was done, what's next |
| Risk & Blockers | 10 min | What threatens progress |
| Decisions Needed | 10 min | What needs to be decided now |
| Action Items | 5 min | Who does what by when |
| **Total** | **50 min** | |

**Cadence:** Same day/time every week, no exceptions.

**Attendees:**
- Required: Pilot Lead, Technical Lead, Domain Expert
- Optional: Executive Sponsor (bi-weekly minimum), Additional stakeholders

---

## Pre-Meeting Preparation

The Pilot Lead prepares the review document before the meeting. Attendees review in advance.

### Pilot Lead Checklist (Day Before)

- [ ] Update metrics dashboard
- [ ] Collect status from team members
- [ ] Identify blockers and risks
- [ ] Note decisions needed
- [ ] Prepare draft action items
- [ ] Send materials to attendees

---

## Weekly Review Document

```markdown
# [Pilot Name] - Weekly Review
## Week [X] of [Y] | [Date]

---

## Executive Summary

**Overall Status:** 🟢 On Track | 🟡 At Risk | 🔴 Off Track

**One-line summary:**
[Single sentence describing this week's most important point]

---

## Metrics Dashboard

### Primary Metric: [Metric Name]

| Measure | Baseline | Target | Current | Trend |
|---------|----------|--------|---------|-------|
| [Primary Metric] | [X] | [Y] | [Z] | ↑↓→ |

**Chart:** [Week-over-week trend chart if available]

**Commentary:**
[2-3 sentences explaining the current state and any notable changes]

### Secondary Metrics

| Metric | Baseline | Target | Current | Status |
|--------|----------|--------|---------|--------|
| [Metric 1] | | | | 🟢🟡🔴 |
| [Metric 2] | | | | 🟢🟡🔴 |
| [Metric 3] | | | | 🟢🟡🔴 |

### Guardrail Metrics

| Metric | Threshold | Current | Status |
|--------|-----------|---------|--------|
| [Guardrail 1] | Must not exceed X | | ✅❌ |
| [Guardrail 2] | Must remain above Y | | ✅❌ |

---

## Kill Criteria Check

| Kill Criterion | Threshold | Current Status | Triggered? |
|----------------|-----------|----------------|------------|
| [K1] | | | ⬜ No |
| [K2] | | | ⬜ No |
| [K3] | | | ⬜ No |

**Review Triggers:**
- [ ] Any review trigger approaching threshold? [Y/N - details if Y]

---

## Progress This Week

### Completed
- ✅ [Task 1 - completed as planned]
- ✅ [Task 2 - completed with notes]

### In Progress
- 🔄 [Task 3 - X% complete, expected completion date]
- 🔄 [Task 4 - status and notes]

### Not Started (Planned for This Week)
- ⬜ [Task 5 - reason for delay]

### Unplanned Work
- ⚡ [Unplanned item - why it was needed]

---

## Plan for Next Week

| Priority | Task | Owner | Due Date |
|----------|------|-------|----------|
| P1 | [Critical task] | [Name] | [Date] |
| P2 | [Important task] | [Name] | [Date] |
| P3 | [Normal task] | [Name] | [Date] |

---

## Risks & Blockers

### Current Blockers (Requiring Escalation)

| Blocker | Impact | Owner | Resolution Path | Target Date |
|---------|--------|-------|-----------------|-------------|
| [Blocker 1] | [Impact if not resolved] | [Name] | [What needs to happen] | [Date] |

### Active Risks

| Risk | Probability | Impact | Mitigation Status |
|------|-------------|--------|-------------------|
| [Risk 1] | H/M/L | H/M/L | [Current mitigation] |
| [Risk 2] | H/M/L | H/M/L | [Current mitigation] |

### Risks Retired This Week
- [Risk that is no longer relevant and why]

---

## Decisions Needed

| Decision | Context | Options | Recommendation | Decider | Deadline |
|----------|---------|---------|----------------|---------|----------|
| [Decision 1] | [Why needed now] | [A, B, C] | [Recommended option] | [Name] | [Date] |

---

## Stakeholder Items

### Updates to Share
- [Key update for stakeholder communication]

### Stakeholder Concerns
- [Any concerns raised by stakeholders this week]

### Upcoming Stakeholder Events
- [Meeting, demo, presentation scheduled]

---

## Resource Status

| Resource | Planned | Actual | Variance | Notes |
|----------|---------|--------|----------|-------|
| Person A | 40% | 35% | -5% | [Reason] |
| Person B | 60% | 60% | 0% | |
| Budget | $X | $Y | $Z | |

---

## Action Items

### New This Week

| # | Action | Owner | Due Date | Status |
|---|--------|-------|----------|--------|
| A1 | [Action item] | [Name] | [Date] | ⬜ New |

### Carried Over

| # | Action | Owner | Due Date | Status |
|---|--------|-------|----------|--------|
| A0 | [Prior action item] | [Name] | [Date] | 🔄 In Progress |

### Completed This Week

| # | Action | Owner | Completed Date |
|---|--------|-------|----------------|
| A-1 | [Completed action] | [Name] | [Date] |

---

## Notes & Parking Lot

**Discussion Notes:**
- [Key discussion point from meeting]

**Parking Lot (For Future):**
- [Item to revisit later]

---

## Next Review

**Date:** [Next week's date and time]
**Special Agenda Items:** [Any special topics for next week]
```

---

## Review Best Practices

### Do's

| Practice | Why |
|----------|-----|
| **Start with metrics** | Facts before opinions |
| **Update document before meeting** | Time is for discussion, not reading |
| **Time-box each section** | Don't let one topic consume all time |
| **Assign action owners and dates** | Accountability requires specificity |
| **Document decisions** | Future reference and alignment |
| **Escalate blockers immediately** | Don't wait for the meeting |

### Don'ts

| Anti-pattern | Problem |
|--------------|---------|
| **Skip weeks** | Problems compound |
| **Let one person dominate** | Miss important perspectives |
| **Discuss solutions without data** | Premature optimization |
| **Leave actions unassigned** | Nothing happens |
| **Ignore uncomfortable truths** | Delayed problems are bigger problems |
| **Change metrics mid-pilot** | Breaks comparability |

---

## Meeting Facilitation Guide

### Before the Meeting (Pilot Lead)

1. **Send pre-read 24h in advance**
   - Updated metrics
   - Key issues flagged
   - Decisions needed identified

2. **Check for critical items**
   - Any kill criteria approaching?
   - Any blockers requiring sponsor?
   - Any stakeholder conflicts?

### During the Meeting

1. **Open (2 min)**
   - State overall status
   - Highlight key point of the week
   - Set agenda focus if needed

2. **Metrics (15 min)**
   - Review primary metric trend
   - Note significant changes
   - Probe unexpected results

3. **Progress (10 min)**
   - Celebrate completions
   - Understand delays
   - Validate next week plan

4. **Risks & Blockers (10 min)**
   - Focus on blockers first
   - Assign resolution owners
   - Update risk register

5. **Decisions (10 min)**
   - Present context and options
   - Seek input
   - Make or escalate decision

6. **Actions (5 min)**
   - Review all open actions
   - Confirm new assignments
   - Note carried-over items

7. **Close (2 min)**
   - Summarize key outcomes
   - Confirm next meeting
   - Thank team

### After the Meeting

1. **Distribute notes within 4 hours**
2. **Update project tracking system**
3. **Follow up on blockers with owners**
4. **Prepare stakeholder update if needed**

---

## Weekly Review Checklist

### Pre-Meeting
- [ ] Metrics updated in dashboard
- [ ] Status collected from all team members
- [ ] Review document prepared
- [ ] Pre-read sent to attendees
- [ ] Room/video link confirmed

### During Meeting
- [ ] Attendance confirmed
- [ ] Notes being captured
- [ ] Timekeeper assigned
- [ ] Decisions documented
- [ ] Actions assigned with dates

### Post-Meeting
- [ ] Notes distributed
- [ ] Actions entered in tracking system
- [ ] Blocker escalations initiated
- [ ] Next week's meeting confirmed

---

## Escalation Triggers

Escalate to Executive Sponsor immediately if:

| Trigger | Action |
|---------|--------|
| Kill criterion triggered | Schedule kill review meeting |
| Primary metric trending to failure | Alert sponsor, request guidance |
| Key resource unavailable >1 week | Request intervention |
| Budget overrun projected | Request approval or scope change |
| Critical blocker >1 week unresolved | Request executive intervention |
| Stakeholder conflict | Request sponsor mediation |
