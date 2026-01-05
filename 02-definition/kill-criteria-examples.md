# Kill Criteria Examples

> "The courage to kill a failing pilot is worth more than the cleverness to start a good one."

## Why Kill Criteria Matter

Most pilots fail slowly. Teams cling to hope, redefine success, and consume resources on lost causes. Kill criteria force honesty. They are pre-committed stopping points that remove emotion from the decision.

**The Three Truths of Kill Criteria:**

1. If you can't define failure upfront, you can't recognize it later
2. Sunk cost is not a reason to continue
3. A fast failure is cheaper than a slow one

---

## Kill Criteria Categories

### 1. Data Quality Red Flags

Data is the foundation. If the foundation is broken, nothing built on it will stand.

#### Examples

| Trigger | Threshold | Example Scenario |
|---------|-----------|------------------|
| **Missing data rate exceeds threshold** | >20% missing values in key fields | Claims pilot: 25% of claims missing diagnosis codes. Model cannot learn. Stop. |
| **Data freshness degradation** | >48 hours stale for real-time requirement | Inventory pilot: Feed updates stopped. Decisions based on wrong stock levels. Stop. |
| **Label quality below minimum** | <80% inter-annotator agreement | Document classification: Humans disagree on categories 30% of time. Ground truth unusable. Stop. |
| **Data distribution shift** | Significant drift from training data | Demand forecast: COVID-era data used to predict post-pandemic. Patterns invalid. Stop. |
| **Insufficient volume** | <500 samples per class | Defect detection: Only 50 examples of rare defect. Cannot train reliable model. Stop. |

#### Real Case Study: Data Quality Kill

**Pilot:** Insurance claims auto-adjudication
**Context:** Goal was to auto-approve straightforward claims
**Kill Trigger:** Data quality audit in Week 2 revealed:
- 35% of historical claims had incorrect coding
- "Ground truth" approvals contained 12% known errors
- No way to distinguish good training data from bad

**Decision:** Killed at Week 3
**Outcome:** Saved 9 weeks of wasted effort. Redirected team to data cleanup initiative. Re-launched pilot 6 months later with clean data—achieved 85% automation rate.

**Lesson:** Garbage in, garbage out. No algorithm can overcome fundamentally flawed data.

---

### 2. Technical Feasibility Blockers

Some problems cannot be solved with current technology, data, or constraints.

#### Examples

| Trigger | Threshold | Example Scenario |
|---------|-----------|------------------|
| **Model accuracy ceiling** | Cannot exceed random baseline + 10% after 4 weeks | Churn prediction: Best model achieves 55% accuracy (random = 50%). Signal not in data. Stop. |
| **Latency requirements unachievable** | >2x required response time despite optimization | Real-time pricing: 500ms requirement, best achieved 2 seconds. Architecture won't work. Stop. |
| **Integration infeasible** | Critical system lacks APIs, no workaround | ERP integration: Legacy system requires 6-month modification project. Pilot timeline broken. Stop. |
| **Scale limits** | Solution doesn't work at 10% of production volume | Image processing: Works for 100 images/day, production requires 10,000. Architecture fundamentally unscalable. Stop. |
| **Accuracy-fairness tradeoff** | Cannot meet fairness constraints without unacceptable accuracy loss | Lending model: Removing bias reduces accuracy below business threshold. Stop and reassess. |

#### Real Case Study: Technical Feasibility Kill

**Pilot:** Predictive maintenance for pumping stations
**Context:** Predict pump failures 24 hours in advance
**Kill Trigger:** Week 5 analysis showed:
- Only 3 failures in historical data (need 50+ for ML)
- Sensor data captured once per hour (failures happen in minutes)
- Best model: 40% precision, 60% recall (worse than current scheduled maintenance)

**Decision:** Killed at Week 6
**Outcome:** Pivoted to rule-based anomaly alerts using existing thresholds. Achieved 70% of value at 10% of complexity. ML approach parked for "future when more failure data available."

**Lesson:** ML needs data. If you don't have enough examples of what you're predicting, no algorithm will help.

---

### 3. Organizational Readiness Gaps

Technology is easy. People are hard. Some organizations aren't ready.

#### Examples

| Trigger | Threshold | Example Scenario |
|---------|-----------|------------------|
| **Stakeholder withdrawal** | Sponsor or key stakeholder exits/withdraws support | Budget pilot: CFO who sponsored leaves company. New CFO "wants to revisit priorities." Stop. |
| **Resource availability** | <50% of committed resources for >2 weeks | Team lead pulled to "higher priority" project. Pilot starved of attention. Stop. |
| **Change resistance** | >40% of users refuse to participate in testing | Workers' comp pilot: Adjusters see AI as threat, refuse to use tool. Stop and address change management. |
| **Process instability** | Underlying process changed during pilot | Call center pilot: Mid-pilot, company changed routing logic. Baseline invalidated. Stop and re-scope. |
| **Compliance/Legal block** | Legal/compliance raises blocking concern | HR screening: Legal determines adverse impact risk unacceptable. Stop immediately. |

#### Real Case Study: Organizational Readiness Kill

**Pilot:** AI-assisted quality inspection in manufacturing
**Context:** Camera-based defect detection to assist quality inspectors
**Kill Trigger:** Week 4 observations:
- Quality team saw AI as job threat despite messaging
- Inspectors overriding AI recommendations without logging reasons
- Union raised formal concerns
- Quality manager "too busy" for weekly reviews

**Decision:** Killed at Week 5
**Outcome:** Paused technology implementation. Launched 3-month change management program with union involvement. Quality team redesigned their own "inspector-AI partnership" model. Re-launched pilot with workers as champions—achieved 95% adoption.

**Lesson:** Technology deployed against users will fail. Technology deployed with users succeeds.

---

### 4. ROI Threshold Failures

Business cases must close. Hope is not a strategy.

#### Examples

| Trigger | Threshold | Example Scenario |
|---------|-----------|------------------|
| **Benefit below minimum** | Projected annual benefit < 2x total cost | Document processing: Max 200 hours/year saved. Costs $150K to build and run. Stop. |
| **Unit economics don't scale** | Per-transaction cost > current process | NLP analysis: $0.15 per document via AI, $0.08 manually at scale. Stop. |
| **Adoption ceiling too low** | <30% of transactions eligible for automation | Claims: Only 15% of claims simple enough for auto-adjudication. Benefit too small. Stop. |
| **Time-to-value exceeds threshold** | >24 months to breakeven | Predictive model: Requires 18 months of data collection before usable. Opportunity cost too high. Stop. |
| **Competitive window closed** | Market/opportunity window passed | Product recommendation: By launch, competitor has 18-month head start. Strategic value gone. Stop. |

#### Real Case Study: ROI Kill

**Pilot:** AI-powered customer service chatbot
**Context:** Handle routine inquiries, reduce call volume
**Kill Trigger:** Week 8 analysis:
- Chatbot correctly resolved 45% of queries (target: 60%)
- But only 30% of customers would use it (target: 70%)
- Net call reduction: 13.5% (45% × 30%)
- ROI at scale: 0.8x investment (below 1.5x minimum)

**Decision:** Killed at Week 10
**Outcome:** Pivoted to agent-assist model (AI helps human agents, not replaces them). This achieved 25% handle time reduction with 100% of interactions. Better ROI, faster deployment.

**Lesson:** Partial automation × partial adoption = marginal benefit. Sometimes augmentation beats automation.

---

### 5. Timeline Breach Triggers

Pilots have expiration dates. Endless pilots become permanent R&D projects.

#### Examples

| Trigger | Threshold | Example Scenario |
|---------|-----------|------------------|
| **Core functionality delay** | Key capability not demonstrated by 50% point | Week 6: Still configuring data pipelines. No model trained. Stop and re-scope. |
| **Testing delay** | Production testing cannot start by Week 8 | Week 8: Model in dev, but no production environment available. Stop. |
| **Results delay** | Insufficient data for significance by Week 10 | Volume lower than expected. Won't have enough samples. Stop or extend with sponsor approval. |
| **Dependencies missed** | Critical dependency not delivered by committed date + 2 weeks | IT delayed API access by month. Pilot timeline broken. Stop. |
| **Pivot limit exceeded** | >2 major scope changes | Started as chatbot, pivoted to email, now considering voice. Lost focus. Stop. |

#### Real Case Study: Timeline Kill

**Pilot:** Demand forecasting for retail
**Context:** 12-week pilot to improve inventory optimization
**Kill Trigger:** Timeline analysis at Week 6:
- Week 1-3: Data access negotiations (target: Week 1)
- Week 4-5: Data quality issues found and escalated
- Week 6: Still no clean data pipeline
- Projection: First model training at Week 10
- Projection: First results at Week 14 (exceeds pilot)

**Decision:** Killed at Week 6
**Outcome:** Reset expectations. Sponsor approved 8-week "Phase 0" for data readiness. Pilot proper started with clean data. Ultimately successful, but total timeline was 20 weeks (Phase 0 + Pilot).

**Lesson:** Be honest about timeline slippage. A delayed pilot should be re-scoped or killed, not quietly extended.

---

## Kill Criteria Template

Use this template to define kill criteria for your pilot:

```markdown
## Kill Criteria for [Pilot Name]

### Automatic Stop Triggers
These conditions trigger immediate pilot halt. No exceptions.

| ID | Category | Trigger Condition | Measurement | Review Owner |
|----|----------|-------------------|-------------|--------------|
| K1 | Data Quality | [Specific condition] | [How measured] | [Name] |
| K2 | Technical | [Specific condition] | [How measured] | [Name] |
| K3 | Organizational | [Specific condition] | [How measured] | [Name] |
| K4 | ROI | [Specific condition] | [How measured] | [Name] |
| K5 | Timeline | [Specific condition] | [How measured] | [Name] |

### Review Triggers
These conditions trigger pause and assessment. May continue with mitigation.

| ID | Condition | Review Process | Decision Maker |
|----|-----------|----------------|----------------|
| R1 | [Condition] | [Process] | [Name] |
| R2 | [Condition] | [Process] | [Name] |

### Kill Process

1. **Detection:** Kill trigger identified by [role]
2. **Verification:** Confirmed by [role] within 24 hours
3. **Escalation:** Sponsor notified within 48 hours
4. **Decision:** Kill/Continue/Modify decided within 1 week
5. **Documentation:** Lessons learned captured within 2 weeks
6. **Communication:** Stakeholders informed within 48 hours of decision

### Sign-off
By signing, all parties agree to honor these kill criteria without exception.

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Sponsor | | | |
| Pilot Lead | | | |
```

---

## Kill vs. Pivot vs. Persist Decision Tree

```
Is a kill criterion triggered?
├─ Yes → Is it an automatic stop trigger?
│         ├─ Yes → KILL immediately
│         └─ No → Can the issue be resolved in <2 weeks?
│                  ├─ Yes → PIVOT with documented changes
│                  └─ No → KILL
│
└─ No → Is primary metric trending toward failure?
         ├─ Yes → Is root cause understood?
         │         ├─ Yes → Can it be addressed within scope?
         │         │         ├─ Yes → PERSIST with mitigation
         │         │         └─ No → PIVOT or KILL
         │         └─ No → Investigate (1 week max) → Re-evaluate
         │
         └─ No → PERSIST
```

---

## The Kill Meeting

When a kill criterion is triggered, hold a structured review:

### Agenda (1 hour max)

1. **Facts** (10 min): What triggered the kill criterion? Data only.
2. **Analysis** (15 min): Why did this happen? Root cause.
3. **Options** (15 min): Kill / Pivot / Persist with mitigation
4. **Decision** (10 min): Sponsor decides
5. **Next Steps** (10 min): Documentation, communication, team redeployment

### Rules

- No blame. Kill criteria exist so failure is expected and acceptable.
- No extending timeline without new scope document.
- No redefining success after the fact.
- Decision is final for 30 days minimum.

---

## Cultural Note: Celebrating Kills

Organizations that celebrate fast kills get more successful pilots. When you kill a pilot:

- **Thank the team** for honest assessment
- **Document learnings** publicly
- **Redeploy resources** immediately to better opportunities
- **Reference the kill** in future planning ("We learned from X that...")
- **Recognize the decision-maker** for courage

A killed pilot is not a failed pilot. A killed pilot is a successful application of judgment.

---

## See Also

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [`pilot-scope-template.md`](pilot-scope-template.md) | Document kill criteria | Include in scope document |
| [`success-criteria-framework.md`](success-criteria-framework.md) | Link to success thresholds | Define alongside success criteria |
| [`../03-execution/weekly-review-template.md`](../03-execution/weekly-review-template.md) | Monitor kill criteria | Review triggers weekly |
| [`../03-execution/risk-register-template.md`](../03-execution/risk-register-template.md) | Link risks to kills | Risks may trigger kill criteria |
| [`../04-evaluation/go-no-go-decision-matrix.md`](../04-evaluation/go-no-go-decision-matrix.md) | Kill decision process | Reference for kill meetings |
| [`../04-evaluation/lessons-learned-template.md`](../04-evaluation/lessons-learned-template.md) | Document kill learnings | After kill decision |
