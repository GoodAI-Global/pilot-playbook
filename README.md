# The AI Pilot Playbook

**A practical framework for running enterprise AI pilots that actually deliver results.**

*By rogermsc*

---

## Why Pilots Fail

Most AI pilots fail not because the technology doesn't work, but because organizations don't know how to run them properly.

**The failure patterns are predictable:**

1. **Vague objectives.** "Let's try AI on customer service" is not a pilot—it's an experiment without a hypothesis. Without specific, measurable success criteria, you cannot fail or succeed. You just... stop.

2. **No kill criteria.** Organizations struggle to stop failing pilots because they never defined what failure looks like. Sunk cost fallacy kicks in. Resources drain. Hope becomes the strategy.

3. **Wrong problem.** AI gets applied to the easiest problem to automate, not the most impactful problem to solve. The pilot "succeeds" but nobody cares because it didn't address what matters.

4. **No baseline.** You cannot prove improvement if you never measured the starting point. "It feels faster" is not evidence. "We reduced processing time from 12 days to 4 days" is.

5. **Scope creep.** The pilot grows from "automate invoice processing" to "transform the entire finance function" without anyone noticing until it's too late.

6. **Stakeholder misalignment.** Different people want different things. Without explicit agreement on success criteria, the pilot is evaluated against shifting expectations.

7. **Measuring the wrong things.** Model accuracy is not business value. A 95% accurate model that nobody uses is worthless. A 85% accurate model that saves $1M per year is a success.

**This playbook exists to prevent these failures.**

---

## The Operating Loop

We run pilots using a disciplined operating loop that maximizes learning while minimizing waste:

```
┌────────────────────────────────────────────────────────────┐
│                                                            │
│    ┌──────────┐     ┌──────────┐     ┌──────────────┐     │
│    │ IDENTIFY │────▶│  PILOT   │────▶│  INSTRUMENT  │     │
│    └──────────┘     └──────────┘     └──────────────┘     │
│          ▲                                   │             │
│          │                                   ▼             │
│    ┌──────────────┐                  ┌──────────┐         │
│    │ SCALE/SUNSET │◀─────────────────│  LEARN   │         │
│    └──────────────┘                  └──────────┘         │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

### Identify

Find the real bottleneck. Not the easy problem, not the interesting problem—the *impactful* problem. Use data to validate that solving this problem matters.

### Pilot

Run a time-boxed experiment with clear success criteria. Ship the smallest useful thing. Measure what happens. Maximum 12 weeks—if you can't prove value in 12 weeks, you're not ready.

### Instrument

Measure everything that matters. Build the evidence base. Create the data that will inform the decision.

### Learn

Analyze results honestly. What worked? What didn't? What surprised you? Document for the organization, not just the team.

### Scale or Sunset

Make the decision. If it works, scale it. If it doesn't, stop it. Both are valid outcomes. What's not valid is continuing without deciding.

---

## Core Principles

### Ship Small, Learn Fast

> Release the smallest useful thing, measure what happens, iterate based on evidence.

Don't build the complete solution. Build enough to test the hypothesis. A pilot that proves the approach in 6 weeks beats a comprehensive solution that takes 6 months.

### Evidence Over Opinions

> Decisions come from production data, not slideware.

HiPPOs (Highest Paid Person's Opinions) don't run our pilots. Data does. If there's no data, get data. If you can't get data, you're not ready for a pilot.

### Kill Criteria Are Mandatory

> Every pilot must define what failure looks like before starting.

If you can't articulate how the pilot fails, you don't understand it well enough to run it. Kill criteria protect resources and force intellectual honesty.

### The One Number

> Every pilot has exactly one primary metric.

Multiple "primary" metrics create confusion and enable cherry-picking. Pick the ONE number that determines success. Everything else is supporting evidence.

### Baseline Before Build

> You cannot prove improvement without proving the starting point.

Measure the current state before changing anything. This is non-negotiable. No baseline, no pilot.

---

## Using This Playbook

### The Four Phases

This playbook follows four phases that mirror the pilot lifecycle:

| Phase | Focus | When You're Done |
|-------|-------|------------------|
| **01-Discovery** | Understand the problem and readiness | Problem validated, organization ready |
| **02-Definition** | Define scope, success, and kill criteria | Scope document signed, baseline measured |
| **03-Execution** | Run the pilot with discipline | Pilot complete, data collected |
| **04-Evaluation** | Analyze results and decide | Go/No-Go decision made |

### Quick Start

**If you're starting a new pilot:**

1. Begin with [`01-discovery/stakeholder-interview-guide.md`](01-discovery/stakeholder-interview-guide.md) to understand the problem
2. Complete [`01-discovery/ai-readiness-scorecard.md`](01-discovery/ai-readiness-scorecard.md) to assess readiness
3. Use [`01-discovery/bottleneck-identification.md`](01-discovery/bottleneck-identification.md) to confirm you're solving the right problem
4. Fill out [`02-definition/pilot-scope-template.md`](02-definition/pilot-scope-template.md) completely before starting

**If you're running an active pilot:**

1. Use [`03-execution/weekly-review-template.md`](03-execution/weekly-review-template.md) every week
2. Track metrics with [`03-execution/metrics-tracking-sheet.md`](03-execution/metrics-tracking-sheet.md)
3. Manage risks with [`03-execution/risk-register-template.md`](03-execution/risk-register-template.md)

**If you're deciding on a pilot:**

1. Follow [`04-evaluation/results-analysis-framework.md`](04-evaluation/results-analysis-framework.md) for rigorous analysis
2. Score using [`04-evaluation/go-no-go-decision-matrix.md`](04-evaluation/go-no-go-decision-matrix.md)
3. Plan next steps with [`04-evaluation/scale-planning-template.md`](04-evaluation/scale-planning-template.md) or [`04-evaluation/lessons-learned-template.md`](04-evaluation/lessons-learned-template.md)

### Learning from Examples

The [`examples/`](examples/) directory contains complete worked examples:

| Example | Industry | Outcome | Key Learnings |
|---------|----------|---------|---------------|
| [Manufacturing OEE Pilot](examples/manufacturing-oee-pilot.md) | Manufacturing | GO | Historical data value, shadow mode testing |
| [Insurance Claims Pilot](examples/insurance-claims-pilot.md) | Insurance | CONDITIONAL GO | Rules+ML hybrid, data quality limits |
| [Aquaculture Monitoring Pilot](examples/aquaculture-monitoring-pilot.md) | Agriculture | GO | Edge computing, multi-modal fusion |

---

## Directory Structure

```
pilot-playbook/
│
├── README.md                          # This file
├── LICENSE                            # CC-BY-4.0
│
├── 01-discovery/                      # Understand the problem
│   ├── stakeholder-interview-guide.md # How to interview stakeholders
│   ├── data-audit-checklist.md        # How to assess data readiness
│   ├── ai-readiness-scorecard.md      # 10-dimension readiness assessment
│   └── bottleneck-identification.md   # Find the right problem to solve
│
├── 02-definition/                     # Define the pilot
│   ├── pilot-scope-template.md        # Complete scope document
│   ├── success-criteria-framework.md  # Define what success looks like
│   ├── kill-criteria-examples.md      # When to stop
│   └── baseline-measurement-guide.md  # Measure before you start
│
├── 03-execution/                      # Run the pilot
│   ├── weekly-review-template.md      # Weekly review structure
│   ├── metrics-tracking-sheet.md      # Track metrics consistently
│   ├── stakeholder-update-template.md # Keep stakeholders informed
│   └── risk-register-template.md      # Manage risks actively
│
├── 04-evaluation/                     # Decide on results
│   ├── results-analysis-framework.md  # Analyze results rigorously
│   ├── go-no-go-decision-matrix.md    # Make the decision
│   ├── scale-planning-template.md     # Plan for scale
│   └── lessons-learned-template.md    # Capture knowledge
│
└── examples/                          # Worked examples
    ├── manufacturing-oee-pilot.md     # Complete OEE pilot example
    ├── insurance-claims-pilot.md      # Complete claims pilot example
    └── aquaculture-monitoring-pilot.md # Complete monitoring pilot example
```

---

## The Pilot Checklist

Use this checklist to ensure you don't skip critical steps:

### Before You Start

- [ ] Problem is specific and measurable
- [ ] Stakeholders interviewed
- [ ] AI readiness assessed (score >6.0)
- [ ] Bottleneck confirmed with data
- [ ] Data audit complete
- [ ] Pilot scope document complete and signed
- [ ] Success criteria defined with thresholds (MVS, Target, Stretch)
- [ ] Kill criteria defined
- [ ] Baseline measured and documented
- [ ] Resources committed
- [ ] Timeline set (max 12 weeks)

### During the Pilot

- [ ] Weekly reviews happening
- [ ] Metrics tracked consistently
- [ ] Kill criteria monitored
- [ ] Risks managed
- [ ] Stakeholders updated
- [ ] Issues escalated promptly

### At Pilot End

- [ ] Results analyzed rigorously
- [ ] Statistical significance tested
- [ ] Go/No-Go matrix completed
- [ ] Decision made and documented
- [ ] Lessons learned captured
- [ ] Knowledge shared

---

## When to Kill a Pilot

Killing a pilot is not failure—it's smart resource allocation. Kill a pilot when:

| Signal | Action |
|--------|--------|
| **Data quality unsalvageable** | Stop. No algorithm can overcome garbage data. |
| **Technical approach hits ceiling** | Pivot or stop. More effort won't help. |
| **Stakeholder support evaporates** | Stop. Technology without organizational support fails. |
| **ROI doesn't close** | Stop. Value must exceed cost. |
| **Timeline exceeded 2x** | Stop or radically re-scope. |
| **Kill criteria triggered** | Stop immediately and review. |

**Remember:** A fast failure is cheaper than a slow one. Every week spent on a doomed pilot is a week not spent on something that could succeed.

---

## About

This playbook represents a methodology for running enterprise AI pilots that actually deliver results.

**Core principles:**
- Deliver outcomes, not just technology
- Prioritize evidence over opinions
- Know when to stop as well as when to start
- Build organizational capability, not just models

**This is how we run pilots, and now it's how you can too.**

---

## License

This work is licensed under [CC-BY-4.0](LICENSE). You are free to share and adapt this material for any purpose, including commercial use, provided you give appropriate credit.

---

## Contributing

This playbook improves with use. If you have suggestions, corrections, or additions based on your experience running pilots, we welcome contributions.

---

*"The goal of a pilot is not to prove that AI works. It's to prove that AI works for this problem, for this organization, with acceptable cost and risk. Everything else is theater."*

— rogermsc
