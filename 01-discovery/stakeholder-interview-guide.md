# Stakeholder Interview Guide

> "The best AI pilots solve real problems. Real problems live in stakeholder heads, not strategy decks."

## Purpose

Stakeholder interviews surface the ground truth about:
- What problems actually exist (vs. what's assumed)
- Who owns the problem and wants it solved
- What "success" means to different people
- Where resistance will come from
- What has been tried before

---

## Interview Preparation

### Before the Interview

| Task | Details |
|------|---------|
| **Research the stakeholder** | Role, tenure, known positions, past project involvement |
| **Understand their domain** | Basic process knowledge, terminology, current metrics |
| **Review prior materials** | Strategy docs, project proposals, past analyses |
| **Prepare specific questions** | Customize based on role and expected perspective |
| **Set up logistics** | Calendar, location/video, recording permission |

### Stakeholder Mapping

Before interviews, map the stakeholder landscape:

```
                    HIGH INFLUENCE
                         │
         Sponsors        │        Blockers
    (Keep satisfied)     │     (Manage closely)
                         │
LOW INTEREST ────────────┼──────────── HIGH INTEREST
                         │
        Bystanders       │       Champions
       (Monitor)         │    (Leverage actively)
                         │
                    LOW INFLUENCE
```

| Category | Interview Priority | Objective |
|----------|-------------------|-----------|
| Champions | High | Validate problem, get details, build alliance |
| Sponsors | High | Confirm commitment, understand constraints |
| Blockers | Medium | Understand concerns, find common ground |
| Bystanders | Low | Brief touchpoint, assess for movement |

---

## Interview Structure

### Recommended Format

| Phase | Duration | Purpose |
|-------|----------|---------|
| Opening | 5 min | Context, permission to record, agenda |
| Current State | 15 min | Understand today's reality |
| Pain Points | 15 min | Dig into problems and impacts |
| Vision | 10 min | Explore desired future state |
| Constraints | 10 min | Identify blockers and concerns |
| Wrap-up | 5 min | Next steps, additional contacts |

**Total: 60 minutes** (adjust based on stakeholder availability)

---

## Question Bank by Role

### Executive Sponsor Questions

**Current State:**
1. How do you currently measure success in [area of focus]?
2. Where does [area] rank in your strategic priorities this year?
3. What's your current level of confidence in the data you receive about [area]?

**Pain Points:**
4. What's the most expensive problem in [area] right now?
5. What keeps coming up in your reviews that never seems to get fixed?
6. Where are you most blind—what would you like to see that you can't?

**Vision:**
7. If this pilot succeeds wildly, what does that look like in 12 months?
8. What would make you personally champion this initiative?
9. How would you explain success to the board?

**Constraints:**
10. What's the maximum budget/time you'd invest in proving this works?
11. What would cause you to pull the plug?
12. Who else needs to be on board for this to scale?

### Operations Manager Questions

**Current State:**
1. Walk me through a typical [process]—what happens step by step?
2. How many [units] does your team process per [time period]?
3. What systems do you use? Which do you love and hate?
4. How do you know when something goes wrong?

**Pain Points:**
5. Where does your team spend time on work that shouldn't require humans?
6. What are the most common errors or exceptions you deal with?
7. When was the last time [process] caused a customer complaint or missed SLA?
8. What do you wish you could see that you currently can't?

**Vision:**
9. If you could automate one thing tomorrow, what would it be?
10. What would you do with the time saved?
11. How would your team's jobs change in an ideal world?

**Constraints:**
12. What's your biggest concern about AI/automation in your area?
13. What happened the last time someone tried to change [process]?
14. Who on your team would be most supportive? Most skeptical?

### Technical Lead Questions

**Current State:**
1. What's the current tech stack for [area]?
2. Where does the data for [process] come from? Where does it go?
3. What integrations exist? What's the quality of those interfaces?
4. What's your current ML/AI capability in-house?

**Pain Points:**
5. What technical debt is impacting [area]?
6. Where are the data quality issues?
7. What can't you do today that you wish you could?
8. What's the biggest technical risk you see?

**Vision:**
9. If you could redesign this from scratch, what would you do differently?
10. What emerging technologies are you watching for this space?
11. What proof points would convince you this approach works?

**Constraints:**
12. What are the security/compliance requirements?
13. What's the deployment and release process?
14. How long would it take to get [X] access/capability?
15. Who needs to approve technical changes?

### End User / Front-line Worker Questions

**Current State:**
1. Walk me through your typical day/workflow.
2. How long have you been doing this job?
3. What training did you receive? What do you wish you'd learned?
4. What tools do you use most?

**Pain Points:**
5. What's the most frustrating part of your job?
6. What tasks feel like a waste of your skills?
7. Where do errors usually happen? Why?
8. What do you have to work around because systems don't work right?

**Vision:**
9. What would make your job easier?
10. If you could have an assistant, what would you have them do?
11. What would you do with extra time if you had it?

**Constraints:**
12. What's your reaction when you hear "AI" or "automation"?
13. What happened the last time your tools changed?
14. What would make you trust a new system?

---

## Probing Techniques

### Going Deeper

When you hear something interesting, probe:

| Technique | When to Use | Example |
|-----------|-------------|---------|
| **"Tell me more"** | Surface answer, need depth | "You mentioned rework—tell me more about that." |
| **"Can you give me an example?"** | Abstract statement | "When did that last happen?" |
| **"Why is that?"** | Symptom stated, need root cause | "Why do you think those errors occur?" |
| **"What happens then?"** | Understand consequences | "When that error happens, what's the impact?" |
| **"How do you know?"** | Validate claim | "How do you measure that currently?" |
| **"Says who?"** | Separate fact from opinion | "Is that your experience or general consensus?" |

### Red Flags to Probe

When you hear these, dig deeper:

| Red Flag | Possible Reality | Follow-up |
|----------|-----------------|-----------|
| "Everyone agrees" | There's disagreement | "Who might see it differently?" |
| "We just need to..." | Complexity hidden | "What's prevented that so far?" |
| "That's the way it's always been" | No one knows why | "What would happen if it changed?" |
| "It's a people problem" | May be system problem | "If you had perfect people, would it work?" |
| "The data is fine" | Data quality issues | "Can you show me an example?" |
| "We tried that before" | May not have tried well | "What specifically was tried? What happened?" |

---

## Interview Documentation

### During the Interview

- Take notes on key quotes (exact words when impactful)
- Note body language / tone for sensitive topics
- Mark items that need follow-up
- Capture specific numbers and examples

### Post-Interview Template

```markdown
## Stakeholder Interview Summary

**Stakeholder:** [Name]
**Role:** [Title]
**Date:** [YYYY-MM-DD]
**Interviewer:** [Name]
**Duration:** [X minutes]

### Key Quotes
> "[Exact quote 1]"
> "[Exact quote 2]"

### Current State Summary
[2-3 sentences on how they described current reality]

### Pain Points Identified
1. [Pain point 1] - Impact: [Low/Medium/High]
2. [Pain point 2] - Impact: [Low/Medium/High]

### Success Criteria (Their View)
[What would success look like to this person?]

### Concerns/Risks Raised
1. [Concern 1]
2. [Concern 2]

### Influence Assessment
- Support Level: [Champion / Supportive / Neutral / Skeptical / Opposed]
- Influence Level: [High / Medium / Low]
- Engagement Priority: [Must engage / Should engage / Keep informed]

### Follow-up Items
- [ ] [Action 1]
- [ ] [Action 2]

### Additional Contacts Suggested
- [Name] - [Role] - [Why relevant]
```

---

## Synthesizing Across Interviews

After completing interviews, synthesize findings:

### Alignment Matrix

| Topic | Stakeholder 1 | Stakeholder 2 | Stakeholder 3 | Alignment |
|-------|---------------|---------------|---------------|-----------|
| Problem priority | High | High | Low | ⚠️ Mixed |
| Root cause | Data quality | Process gaps | Training | ❌ Divergent |
| Success metric | Cost savings | Quality | Speed | ⚠️ Mixed |
| Appetite for change | High | Medium | Low | ⚠️ Mixed |

### Consolidated Pain Points

| Pain Point | Mentioned By | Impact | Evidence Quality |
|------------|--------------|--------|------------------|
| [Pain 1] | 5/7 stakeholders | High | Strong (data cited) |
| [Pain 2] | 3/7 stakeholders | Medium | Medium (examples given) |
| [Pain 3] | 2/7 stakeholders | High | Weak (opinions only) |

### Interview Synthesis Report

```markdown
## Stakeholder Interview Synthesis

**Interviews Conducted:** [N]
**Roles Covered:** [List]
**Period:** [Date range]

### Consensus Findings
[What everyone (or nearly everyone) agreed on]

### Divergent Perspectives
[Where stakeholders disagreed and why]

### Prioritized Opportunities
| Rank | Opportunity | Pain Level | Sponsor Support | Technical Feasibility |
|------|-------------|------------|-----------------|----------------------|
| 1 | | | | |
| 2 | | | | |

### Key Risks Identified
1. [Risk 1] - [Who raised it]
2. [Risk 2] - [Who raised it]

### Stakeholder Engagement Plan
| Stakeholder | Stance | Action Needed |
|-------------|--------|---------------|
| [Name] | Champion | Involve in design |
| [Name] | Skeptic | Regular updates, address concerns |

### Recommended Next Steps
1. [Next step 1]
2. [Next step 2]
```

---

## Common Interview Mistakes

| Mistake | Problem | Solution |
|---------|---------|----------|
| **Leading questions** | Get confirming answers | Ask open questions, probe both sides |
| **Too many questions** | Fatigue, surface answers | Prioritize, go deep on fewer topics |
| **Not probing** | Accept first answer | Always ask "why" and "how do you know" |
| **Selling solutions** | Miss real problems | Discovery first, solutions later |
| **Not listening** | Miss key insights | Take notes, confirm understanding |
| **Skipping skeptics** | Surprised by resistance | Interview critics early |
| **No documentation** | Insights lost | Document within 24 hours |

---

## Interview Checklist

### Before Each Interview
- [ ] Researched stakeholder background
- [ ] Customized question list
- [ ] Confirmed logistics
- [ ] Recording setup (if applicable)
- [ ] Note-taking prepared

### During Each Interview
- [ ] Set context and agenda
- [ ] Asked open-ended questions
- [ ] Probed for specifics and examples
- [ ] Captured key quotes
- [ ] Identified follow-up actions

### After Each Interview
- [ ] Documented summary within 24 hours
- [ ] Sent thank-you note
- [ ] Added follow-up items to task list
- [ ] Scheduled referred contacts
- [ ] Updated stakeholder map

### After All Interviews
- [ ] Synthesized findings across interviews
- [ ] Identified consensus and divergence
- [ ] Prioritized opportunities
- [ ] Drafted stakeholder engagement plan
- [ ] Shared findings with core team
