# Lessons Learned Template

> "A lesson learned and not documented is a lesson that will be learned again—at full cost."

## Purpose

The lessons learned process captures institutional knowledge from pilot experiences. It ensures:
- Successes are repeated
- Mistakes are not repeated
- Knowledge transfers beyond the team
- The organization gets smarter over time

---

## When to Capture Lessons

| Moment | Focus |
|--------|-------|
| **Weekly during pilot** | Small learnings, process improvements |
| **At major milestones** | What worked/didn't work for this phase |
| **At pilot end** | Comprehensive review |
| **30 days post-decision** | Retrospective with hindsight |

---

## Lessons Learned Session

### Format

| Element | Duration | Purpose |
|---------|----------|---------|
| Context Setting | 5 min | Remind team of pilot goals and outcome |
| What Worked Well | 20 min | Capture successes to repeat |
| What Didn't Work | 20 min | Capture failures to avoid |
| Surprises | 10 min | Unexpected findings |
| Recommendations | 15 min | Actionable advice for future |
| Wrap-up | 5 min | Document ownership and next steps |

**Total: 75 minutes**

### Ground Rules

1. **Blameless:** Focus on systems and processes, not individuals
2. **Honest:** Candid feedback is expected and protected
3. **Specific:** Vague observations aren't actionable
4. **Forward-looking:** Goal is to improve the future, not relitigate the past
5. **Documented:** If it's not written down, it didn't happen

### Facilitation Tips

- Use anonymous input for sensitive topics
- Ensure all voices are heard (not just the loudest)
- Probe for specifics: "Can you give an example?"
- Distinguish between symptoms and root causes
- Time-box each section strictly

---

## Lessons Learned Document

```markdown
# [Pilot Name] - Lessons Learned

## Pilot Summary

| Attribute | Value |
|-----------|-------|
| Pilot Name | [Name] |
| Duration | [Start] to [End] |
| Outcome | [GO / CONDITIONAL GO / ITERATE / NO-GO] |
| Primary Metric Result | [X]% vs [Y]% target |
| Team | [Names] |
| Document Date | [YYYY-MM-DD] |
| Author | [Name] |

---

## What Worked Well

### Category: [e.g., Technical Approach]

**Observation:**
[Specific thing that worked well]

**Impact:**
[How it helped the pilot succeed]

**Recommendation:**
[How to repeat this in future pilots]

---

### Category: [e.g., Stakeholder Engagement]

**Observation:**
[Specific thing that worked well]

**Impact:**
[How it helped the pilot succeed]

**Recommendation:**
[How to repeat this in future pilots]

---

### Category: [e.g., Process]

**Observation:**
[Specific thing that worked well]

**Impact:**
[How it helped the pilot succeed]

**Recommendation:**
[How to repeat this in future pilots]

---

## What Didn't Work

### Category: [e.g., Data]

**Observation:**
[Specific thing that didn't work]

**Impact:**
[How it hurt the pilot]

**Root Cause:**
[Why it happened]

**Recommendation:**
[How to avoid this in future pilots]

---

### Category: [e.g., Timeline]

**Observation:**
[Specific thing that didn't work]

**Impact:**
[How it hurt the pilot]

**Root Cause:**
[Why it happened]

**Recommendation:**
[How to avoid this in future pilots]

---

### Category: [e.g., Communication]

**Observation:**
[Specific thing that didn't work]

**Impact:**
[How it hurt the pilot]

**Root Cause:**
[Why it happened]

**Recommendation:**
[How to avoid this in future pilots]

---

## Surprises

### Unexpected Finding 1

**What We Expected:**
[Original assumption]

**What Actually Happened:**
[Reality]

**Implication:**
[What this means for future work]

---

### Unexpected Finding 2

**What We Expected:**
[Original assumption]

**What Actually Happened:**
[Reality]

**Implication:**
[What this means for future work]

---

## Recommendations for Future Pilots

### Must Do

| # | Recommendation | Applies To | Priority |
|---|----------------|------------|----------|
| 1 | [Recommendation] | [Type of pilot] | Critical |
| 2 | [Recommendation] | [Type of pilot] | Critical |

### Should Do

| # | Recommendation | Applies To | Priority |
|---|----------------|------------|----------|
| 1 | [Recommendation] | [Type of pilot] | High |
| 2 | [Recommendation] | [Type of pilot] | High |

### Consider

| # | Recommendation | Applies To | Priority |
|---|----------------|------------|----------|
| 1 | [Recommendation] | [Type of pilot] | Medium |
| 2 | [Recommendation] | [Type of pilot] | Medium |

---

## Process Improvements

### What to Change in the Playbook

| Current State | Issue | Proposed Change | Owner |
|---------------|-------|-----------------|-------|
| [Current] | [Problem] | [New approach] | [Name] |

### What to Add to Future Pilot Scopes

| Item | Rationale |
|------|-----------|
| [Item] | [Why it's important] |

### What to Remove or Reduce

| Item | Rationale |
|------|-----------|
| [Item] | [Why it's unnecessary] |

---

## Artifacts to Preserve

| Artifact | Location | Why It's Valuable |
|----------|----------|-------------------|
| [Document/code/template] | [Link/path] | [Future use case] |

---

## Acknowledgments

**Team Members:**
- [Name] - [Role] - [Contribution highlight]
- [Name] - [Role] - [Contribution highlight]

**Special Recognition:**
- [Name] for [Specific contribution]

---

## Sign-Off

| Role | Name | Date |
|------|------|------|
| Pilot Lead | | |
| Sponsor | | |
```

---

## Lessons by Category

Use these prompts to ensure comprehensive coverage:

### Technical

- What technical decisions would you make differently?
- What tools or technologies exceeded expectations?
- What technical debt was created? Was it justified?
- What integrations were harder/easier than expected?
- What would you architect differently?

### Data

- Was the data sufficient in quality and quantity?
- What data issues caused the most problems?
- What data sources were most/least valuable?
- How accurate were data availability assumptions?
- What would you measure differently?

### Process

- Was the pilot process (discovery, definition, execution, evaluation) effective?
- What phases took longer than expected? Why?
- What meetings were valuable? Which weren't?
- Was the scope appropriate?
- Was the timeline realistic?

### Stakeholders

- How effective was stakeholder communication?
- Who should have been involved earlier/more?
- Where did stakeholder alignment break down?
- What resistance was encountered? How addressed?
- Was sponsorship sufficient?

### Team

- Was the team composition right?
- Was skill level appropriate?
- Were resources sufficient?
- How was team collaboration?
- What would you staff differently?

### Organization

- How well did the organization support the pilot?
- What organizational barriers were encountered?
- How was change resistance handled?
- What governance worked/didn't work?
- What cultural factors affected the pilot?

---

## Common Lessons Patterns

These patterns appear repeatedly across pilots. Check if they apply:

### Underestimated Complexity

**Pattern:** "It was harder than we thought."

**Common Causes:**
- Integration complexity underestimated
- Data quality issues not discovered early
- Edge cases more numerous than expected
- Technical debt in existing systems

**Prevention:**
- More thorough discovery phase
- Earlier technical spikes
- Explicit complexity buffer in timeline

### Scope Creep

**Pattern:** "The scope grew during the pilot."

**Common Causes:**
- Insufficient scope document
- Stakeholder requests not managed
- "Quick wins" added
- Original scope too narrow to demonstrate value

**Prevention:**
- Rigorous scope template
- Change control process
- Clear "out of scope" list
- Realistic initial scope

### Resource Availability

**Pattern:** "People weren't available as planned."

**Common Causes:**
- Competing priorities emerged
- Resource commitments informal
- Key person dependencies
- Underestimated time requirements

**Prevention:**
- Written resource commitments
- Sponsor enforcement
- Cross-training for key roles
- Buffer in resource planning

### Data Issues

**Pattern:** "The data wasn't what we expected."

**Common Causes:**
- Skipped or insufficient data audit
- Data quality assessed on sample, not population
- Data definitions ambiguous
- Data access delays

**Prevention:**
- Mandatory data audit phase
- Data quality gates before pilot start
- Clear data definitions
- Early access requests

### Stakeholder Alignment

**Pattern:** "People weren't aligned on goals."

**Common Causes:**
- Different success definitions
- Unstated concerns
- Insufficient communication
- Mid-pilot stakeholder changes

**Prevention:**
- Explicit success criteria with sign-off
- Stakeholder interviews in discovery
- Regular stakeholder updates
- Documented decision rights

---

## Lessons Dissemination

Captured lessons only matter if they're used.

### Dissemination Channels

| Channel | Audience | Format | Owner |
|---------|----------|--------|-------|
| Team retrospective | Pilot team | Meeting | Pilot Lead |
| Stakeholder debrief | Key stakeholders | Presentation | Pilot Lead |
| Practice community | Other practitioners | Presentation / Discussion | Pilot Lead |
| Knowledge repository | Future teams | Document | [Knowledge Manager] |
| Playbook updates | Future pilots | Template changes | [Playbook Owner] |
| Leadership summary | Executives | Brief | Sponsor |

### Knowledge Repository Entry

```markdown
## Pilot: [Name]
**Date:** [YYYY-MM-DD]
**Outcome:** [GO / NO-GO / etc.]
**Domain:** [Industry / Function]

### Key Learnings

**#1:** [One-sentence learning]
- Context: [Brief context]
- Recommendation: [What to do]

**#2:** [One-sentence learning]
- Context: [Brief context]
- Recommendation: [What to do]

**#3:** [One-sentence learning]
- Context: [Brief context]
- Recommendation: [What to do]

### Reusable Artifacts
- [Artifact 1] - [Link]
- [Artifact 2] - [Link]

### Contact
- [Name] - [Email] (for questions about this pilot)
```

---

## Lessons Learned Checklist

### Capture
- [ ] Lessons learned session scheduled and held
- [ ] All team members participated
- [ ] Both successes and failures captured
- [ ] Root causes identified, not just symptoms
- [ ] Recommendations are specific and actionable

### Document
- [ ] Lessons learned document completed
- [ ] Artifacts preserved and linked
- [ ] Document reviewed by team
- [ ] Document approved by sponsor

### Disseminate
- [ ] Key stakeholders debriefed
- [ ] Document added to knowledge repository
- [ ] Playbook updates proposed
- [ ] Practice community notified
- [ ] Leadership summary provided

### Act
- [ ] Process improvement actions assigned
- [ ] Playbook updates implemented
- [ ] Follow-up scheduled for 30-day retrospective

---

## See Also

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [`go-no-go-decision-matrix.md`](go-no-go-decision-matrix.md) | Decision context | Reference decision rationale |
| [`results-analysis-framework.md`](results-analysis-framework.md) | Results context | Reference analysis findings |
| [`scale-planning-template.md`](scale-planning-template.md) | Apply lessons to scale | If decision is GO |
| [`../02-definition/pilot-scope-template.md`](../02-definition/pilot-scope-template.md) | Original scope | Compare outcomes to intent |
| [`../03-execution/risk-register-template.md`](../03-execution/risk-register-template.md) | Risk outcomes | Document which risks materialized |
