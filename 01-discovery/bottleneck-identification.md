# Bottleneck Identification Guide

> "AI applied to the wrong bottleneck is optimization theater. Find the constraint before building the solution."

## Purpose

This guide helps identify where AI can have the highest impact by locating the true bottlenecks in a system. Not every problem needs AI, and AI on the wrong problem wastes resources.

**The Goal:** Find the ONE place where improvement will have the greatest system-wide impact.

---

## The Theory of Constraints

### Core Principle

Every system has one constraint that limits overall throughput. Optimizing anything other than the constraint is waste.

```
INPUT → [Step A] → [Step B] → [Step C] → [Step D] → OUTPUT
          10/hr      5/hr       15/hr      8/hr
                      ↑
               BOTTLENECK (5/hr)
```

**In this example:**
- Step B is the constraint (5 units/hour)
- System throughput = 5 units/hour (not 10+5+15+8)
- Improving Step A (10→20/hr): **No impact** (still limited by B at 5/hr)
- Improving Step C (15→30/hr): **No impact** (still limited by B at 5/hr)
- Improving Step B (5→10/hr): **Doubles throughput** (now limited by D at 8/hr)

### Implication for AI

AI should be applied to the constraint, not to easy problems elsewhere in the system.

---

## Types of Bottlenecks

### 1. Throughput Bottlenecks

**Definition:** Step that limits the volume of work completed.

**Symptoms:**
- Work queues before this step
- Step always at 100% utilization
- Downstream steps waiting for input
- Overtime/extra resources at this step

**Example:**
- Claims processing: 1000 claims arrive daily, 300 require manual review
- Manual review capacity: 250/day
- Bottleneck: Manual review creates 50-claim daily backlog

**AI Opportunity:** Reduce claims requiring manual review through auto-adjudication.

### 2. Quality Bottlenecks

**Definition:** Step that introduces errors requiring rework.

**Symptoms:**
- High error/defect rate at this step
- Rework loops back to this step
- Quality checks added after this step
- Customer complaints trace to this step

**Example:**
- Manufacturing: 15% defect rate at welding station
- Downstream assembly catches 10%, 5% reaches customers
- Bottleneck: Welding quality creating rework and customer escapes

**AI Opportunity:** Predictive quality to catch defects at source or predict welding failures.

### 3. Decision Bottlenecks

**Definition:** Step where human judgment creates delays.

**Symptoms:**
- Work waits for someone to decide
- Decisions made are inconsistent
- Decision-makers are overwhelmed
- Escalation queues growing

**Example:**
- Loan approval: Underwriters review 50 applications/day each
- 200 applications/day, 3 underwriters = 50 applications/day backlog
- Bottleneck: Underwriting judgment

**AI Opportunity:** Decision support or auto-approval for clear-cut cases.

### 4. Information Bottlenecks

**Definition:** Step where lack of information causes delays.

**Symptoms:**
- Work paused waiting for data/documents
- Requests for information are common
- Multiple systems must be consulted
- Decisions made with incomplete information

**Example:**
- Insurance claims: Average claim requires 3 requests for additional information
- Each request adds 5 days to cycle time
- Bottleneck: Missing information at intake

**AI Opportunity:** Intelligent document extraction to gather all information upfront.

### 5. Expertise Bottlenecks

**Definition:** Step requiring specialized knowledge in short supply.

**Symptoms:**
- Specific individuals are always the constraint
- Long wait times for expert review
- Knowledge loss when experts leave
- Training takes months/years

**Example:**
- Radiology: 2-week wait for specialist review
- General radiologists can't interpret specialized scans
- Bottleneck: Limited specialist availability

**AI Opportunity:** AI-assisted interpretation for routine cases, flagging for specialists.

---

## Bottleneck Identification Process

### Step 1: Map the Process

Create an end-to-end process map with:
- Each step in the process
- Time spent at each step
- Time waiting between steps
- Resources at each step
- Volume through each step

**Template:**

| Step | Description | Cycle Time | Wait Time | Resources | Daily Volume | Error Rate |
|------|-------------|------------|-----------|-----------|--------------|------------|
| 1 | | | | | | |
| 2 | | | | | | |
| ... | | | | | | |

### Step 2: Calculate Capacity

For each step:

```
Capacity = Resources × Time Available × Units per Resource-Hour
```

**Example:**
- Step: Manual Review
- Resources: 5 reviewers
- Time Available: 7 hours/day (accounting for meetings, breaks)
- Units per Resource-Hour: 4 reviews/hour
- Capacity: 5 × 7 × 4 = 140 reviews/day

### Step 3: Compare Demand to Capacity

| Step | Daily Demand | Daily Capacity | Utilization | Backlog Growth |
|------|--------------|----------------|-------------|----------------|
| 1 | 200 | 300 | 67% | 0 |
| 2 | 200 | 140 | 143% | +60/day |
| 3 | 200 | 250 | 80% | 0 |

**Bottleneck = Step with highest utilization (>100% = backlog)**

### Step 4: Validate with Data

Confirm suspected bottleneck with:

#### Queue Analysis
```sql
-- Work waiting at each step
SELECT
  current_step,
  COUNT(*) as items_waiting,
  AVG(DATEDIFF(hour, arrived_at_step, NOW())) as avg_wait_hours
FROM work_items
WHERE status = 'waiting'
GROUP BY current_step
ORDER BY items_waiting DESC;
```

#### Cycle Time Breakdown
```sql
-- Time spent in each step
SELECT
  step_name,
  AVG(step_duration_hours) as avg_duration,
  AVG(wait_before_step_hours) as avg_wait,
  AVG(step_duration_hours) + AVG(wait_before_step_hours) as total_step_time
FROM process_log
GROUP BY step_name
ORDER BY total_step_time DESC;
```

### Step 5: Confirm the Bottleneck

**Validation checks:**

| Check | Question | Method |
|-------|----------|--------|
| Queue builds before this step | Is there consistently work waiting? | Queue data over time |
| Resources at 100% | Are people/machines fully utilized? | Utilization tracking |
| Downstream starves | Do later steps have idle capacity? | Throughput comparison |
| Small improvements have big impact | Does 10% improvement here beat 10% elsewhere? | Simulation/modeling |
| Stakeholders agree | Do workers and managers confirm? | Interviews |

---

## AI Suitability Assessment

Once the bottleneck is identified, assess if AI is the right solution.

### AI Suitability Matrix

| Bottleneck Type | AI Suitability | Why |
|-----------------|----------------|-----|
| Pattern recognition decisions | 🟢 High | AI excels at consistent pattern matching |
| Document/data extraction | 🟢 High | ML can automate extraction at scale |
| Prediction with historical data | 🟢 High | ML can learn from past patterns |
| Rules-based decisions | 🟡 Medium | Consider rules engine first, ML for edge cases |
| Novel/creative decisions | 🔴 Low | AI cannot replace true expertise |
| Relationship-dependent work | 🔴 Low | Human connection required |
| Capacity/resource constraints | 🔴 Low | Hire more people or automate with RPA |

### Alternative Solutions to Consider

Before defaulting to AI, consider:

| Alternative | When to Use | Example |
|-------------|-------------|---------|
| **Process redesign** | Process adds unnecessary steps | Eliminate approvals for low-risk items |
| **RPA** | Repetitive, rules-based work | Data entry across systems |
| **Better tooling** | Manual work is inefficient | Replace spreadsheets with database |
| **Additional resources** | Straightforward capacity gap | Hire more staff |
| **Outsourcing** | Variable demand, non-core work | Contract for peak periods |
| **Policy change** | Rules create bottleneck | Change approval thresholds |

### AI Fit Assessment

| Question | Yes | No |
|----------|-----|-----|
| Is there data available to train/inform the AI? | ⬜ | ⬜ |
| Are there enough examples of correct decisions? | ⬜ | ⬜ |
| Is the decision consistent (same inputs → same outputs)? | ⬜ | ⬜ |
| Can errors be caught before causing harm? | ⬜ | ⬜ |
| Is the cost/complexity of AI justified by the impact? | ⬜ | ⬜ |
| Will users trust and adopt an AI solution? | ⬜ | ⬜ |

**If majority "No" → Consider alternatives before AI**

---

## Impact Estimation

### Calculating Bottleneck Relief Value

```
Current Throughput = Bottleneck Capacity = X units/day

If AI improves bottleneck by Y%:
  New Bottleneck Capacity = X × (1 + Y%)

If new capacity > next bottleneck:
  System Throughput = Next Bottleneck Capacity
Else:
  System Throughput = New Bottleneck Capacity

Improvement = New Throughput - Current Throughput
Value = Improvement × Value per Unit
```

### Example Calculation

**Current State:**
- Claims received: 500/day
- Auto-approve (current): 200/day (40%)
- Manual review capacity: 200/day
- Total processed: 400/day
- Backlog: Growing 100/day

**With AI:**
- Auto-approve rate: 70% (350/day)
- Manual review needed: 150/day
- Manual review capacity: 200/day
- Total processed: 500/day
- Backlog: Eliminated

**Value:**
- Throughput increase: 100 claims/day
- Average claim value: $5,000
- Faster processing value: $50 per claim per day saved
- Daily value: 100 × $50 = $5,000/day
- Annual value: $1.25M

---

## Bottleneck Identification Worksheet

```markdown
## Bottleneck Analysis for [Process Name]

### Process Overview
- End-to-end process time: [X hours/days]
- Daily volume: [X units]
- Current throughput: [X units/day]
- Backlog: [X units, growing at Y/day]

### Step Analysis

| Step | Cycle Time | Wait Time | Capacity | Demand | Utilization |
|------|------------|-----------|----------|--------|-------------|
| | | | | | |

### Identified Bottleneck

**Bottleneck Step:** [Name]

**Evidence:**
1. [Evidence point 1]
2. [Evidence point 2]
3. [Evidence point 3]

**Bottleneck Type:**
- [ ] Throughput
- [ ] Quality
- [ ] Decision
- [ ] Information
- [ ] Expertise

### Solution Assessment

**Alternative solutions considered:**
| Alternative | Pros | Cons | Estimated Impact |
|-------------|------|------|------------------|
| | | | |

**AI suitability:** 🟢 High / 🟡 Medium / 🔴 Low

**Rationale:**
[Why AI is or isn't the right solution]

### Impact Estimate

**If AI applied to bottleneck:**
- Current capacity: [X/day]
- Projected capacity: [Y/day]
- Throughput improvement: [Z/day]
- Annual value: [$]

### Recommendation

☐ **Proceed with AI pilot** - Bottleneck is AI-suitable with high impact
☐ **Consider alternatives first** - AI may not be best solution
☐ **Wrong bottleneck** - Further analysis needed
☐ **Bottleneck is not the priority** - Other issues more pressing
```

---

## Common Bottleneck Mistakes

| Mistake | Problem | Solution |
|---------|---------|----------|
| **Optimizing non-constraints** | No system-level impact | Map full process, find true constraint |
| **Assuming the bottleneck** | Based on opinion, not data | Measure capacity and utilization |
| **Moving the bottleneck** | Fix one, create another | Consider downstream impact |
| **Ignoring variability** | Average capacity isn't actual | Account for peaks and variance |
| **Confusing symptoms with causes** | Treating effects, not root cause | Ask "why?" five times |
| **Technology-first thinking** | AI looking for a problem | Start with bottleneck, then solution |

---

## Quick Bottleneck Test

Answer these questions about your process:

1. **Where does work pile up waiting?**
   - [ ] Step: _______________

2. **Which step is always at 100% capacity?**
   - [ ] Step: _______________

3. **Which step do people complain about most?**
   - [ ] Step: _______________

4. **If you could double capacity at one step, which would help most?**
   - [ ] Step: _______________

5. **Which step has the most errors/rework?**
   - [ ] Step: _______________

**If 3+ answers point to the same step → That's likely your bottleneck.**

---

## Output: Bottleneck Summary

At the end of this analysis, you should have:

1. **Confirmed bottleneck** with data evidence
2. **Bottleneck type** (throughput, quality, decision, information, expertise)
3. **AI suitability assessment** with rationale
4. **Impact estimate** in business terms
5. **Recommendation** to proceed or consider alternatives

---

## See Also

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [`stakeholder-interview-guide.md`](stakeholder-interview-guide.md) | Understand pain points | Before bottleneck analysis |
| [`data-audit-checklist.md`](data-audit-checklist.md) | Verify data for bottleneck | After identifying bottleneck |
| [`ai-readiness-scorecard.md`](ai-readiness-scorecard.md) | Confirm readiness to address | After bottleneck confirmed |
| [`../tools/roi-calculator.md`](../tools/roi-calculator.md) | Calculate impact value | Quantify bottleneck cost |
| [`../02-definition/pilot-scope-template.md`](../02-definition/pilot-scope-template.md) | Scope the solution | After bottleneck validated |
| [`../governance/ai-ethics-checklist.md`](../governance/ai-ethics-checklist.md) | Review ethical implications | Before committing to AI approach |
