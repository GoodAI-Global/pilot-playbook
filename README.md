# Enterprise AI Pilot Playbook

[![CI](https://github.com/GoodAI-Global/pilot-playbook/actions/workflows/ci.yml/badge.svg)](https://github.com/GoodAI-Global/pilot-playbook/actions/workflows/ci.yml)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

> A structured methodology for running enterprise AI pilots that deliver measurable results, not just demos.

**Why most AI pilots fail:** Vague objectives, no baseline metrics, scope creep, and no kill criteria. This playbook prevents those failures.

---

## Table of Contents

- [The Framework](#the-framework)
- [Quick Start](#quick-start)
- [When to Use This](#when-to-use-this)
- [Directory Structure](#directory-structure)
- [Core Principles](#core-principles)
- [Templates](#templates)
- [Examples](#examples)
- [Contributing](#contributing)
- [License](#license)

---

## The Framework

```
Identify → Pilot → Instrument → Learn → Scale/Sunset
```

| Phase | Purpose | Duration |
|-------|---------|----------|
| **01-Discovery** | Find the right problem | 1-2 weeks |
| **02-Definition** | Define success/failure criteria | 1 week |
| **03-Execution** | Build and run the pilot | 2-8 weeks |
| **04-Evaluation** | Decide: scale, iterate, or kill | 1 week |

---

## Quick Start

1. **Identify a candidate problem** using the [AI Readiness Scorecard](01-discovery/ai-readiness-scorecard.md)
2. **Define success criteria** with the [Pilot Scope Template](02-definition/pilot-scope-template.md)
3. **Set your baseline** using the [Baseline Measurement Guide](02-definition/baseline-measurement-guide.md)
4. **Run the pilot** with [Weekly Reviews](03-execution/weekly-review-template.md)
5. **Measure** against your defined criteria
6. **Decide** using the [Go/No-Go Decision Matrix](04-evaluation/go-no-go-decision-matrix.md)

---

## When to Use This

✅ **Use this playbook when:**

- Starting your first AI initiative
- Previous AI projects failed to deliver ROI
- Leadership wants AI but doesn't know where to start
- You need to prove value before larger investment

❌ **Don't use this for:**

- Mature AI programs with established processes
- Pure research/experimentation with no business case
- Projects where success criteria can't be measured

---

## Directory Structure

```
pilot-playbook/
├── 01-discovery/                    # Understand the problem
│   ├── stakeholder-interview-guide.md
│   ├── data-audit-checklist.md
│   ├── ai-readiness-scorecard.md
│   └── bottleneck-identification.md
│
├── 02-definition/                   # Define the pilot
│   ├── pilot-scope-template.md
│   ├── success-criteria-framework.md
│   ├── kill-criteria-examples.md
│   └── baseline-measurement-guide.md
│
├── 03-execution/                    # Run the pilot
│   ├── weekly-review-template.md
│   ├── metrics-tracking-sheet.md
│   ├── stakeholder-update-template.md
│   └── risk-register-template.md
│
├── 04-evaluation/                   # Decide on results
│   ├── results-analysis-framework.md
│   ├── go-no-go-decision-matrix.md
│   ├── scale-planning-template.md
│   └── lessons-learned-template.md
│
├── tools/                           # Business case tools
│   ├── roi-calculator.md
│   └── vendor-evaluation-matrix.md
│
├── governance/                      # Responsible AI
│   ├── ai-ethics-checklist.md
│   ├── model-card-template.md
│   └── bias-testing-protocol.md
│
└── examples/                        # Complete worked examples
    ├── manufacturing-oee-pilot.md
    ├── insurance-claims-pilot.md
    └── aquaculture-monitoring-pilot.md
```

---

## Core Principles

### 1. Measurable Problems Only

If you can't measure current state, you can't prove improvement. No baseline = no pilot.

### 2. Kill Criteria Upfront

Define what failure looks like before you start. If you hit kill criteria, stop. This isn't failure—it's learning.

### 3. Smallest Useful Thing

Don't build a platform. Build the smallest thing that could prove the hypothesis. Then measure.

### 4. Evidence Over Opinions

Decisions come from data, not stakeholder enthusiasm. Weekly reviews use metrics, not feelings.

### 5. Human Uplift Required

Every pilot must answer: who gets faster/safer, and what new capability appears? If only machines benefit, reconsider.

---

## Templates

| Template | Purpose | When to Use |
|----------|---------|-------------|
| [AI Readiness Scorecard](01-discovery/ai-readiness-scorecard.md) | Assess organizational readiness | Discovery phase |
| [Pilot Scope Template](02-definition/pilot-scope-template.md) | Document scope, success, kill criteria | Definition phase |
| [Weekly Review](03-execution/weekly-review-template.md) | Structured progress check | During execution |
| [Go/No-Go Matrix](04-evaluation/go-no-go-decision-matrix.md) | Scale/sunset decision framework | Evaluation phase |

---

## Examples

### Manufacturing

- **Problem:** Unplanned downtime costing $2.8M annually
- **Pilot:** Predictive maintenance on 3 CNC machines
- **Metric:** Unplanned downtime hours/month
- **Result:** 34% reduction, $541K annual savings projected
- **Decision:** GO - scaling to all 12 machines
- [See full case study](examples/manufacturing-oee-pilot.md)

### Insurance

- **Problem:** Claims processing takes 14+ days
- **Pilot:** Document extraction automation
- **Metric:** Processing time, accuracy rate
- **Result:** 67% time reduction with 94% accuracy
- **Decision:** CONDITIONAL GO - hybrid rules+ML approach
- [See full case study](examples/insurance-claims-pilot.md)

### Aquaculture

- **Problem:** Fish mortality from undetected water quality issues
- **Pilot:** Real-time monitoring with edge AI
- **Metric:** Early detection rate, false alarm rate
- **Result:** 89% early detection, mortality reduced 45%
- **Decision:** GO - expanding to additional sites
- [See full case study](examples/aquaculture-monitoring-pilot.md)

---

## Contributing

We welcome contributions that improve this methodology. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Especially valuable:**

- Additional industry examples (healthcare, retail, logistics)
- Improved templates based on real-world usage
- Translations

---

## License

This playbook is licensed under [CC BY 4.0](LICENSE). You may use, modify, and share with attribution.

Attribution: "Enterprise AI Pilot Playbook by Good AI (https://wearegoodai.com)"

---

## About Good AI

We solve what slows you down. This playbook represents our methodology for enterprise AI implementations—tested across manufacturing, insurance, healthcare, and financial services.

**Need help running a pilot?** [Contact us](mailto:contact@wearegoodai.com)

---

<div align="center">

**Good AI** — Production-ready AI implementations for enterprises.

[Website](https://wearegoodai.com) · [GitHub](https://github.com/GoodAI-Global) · [Contact](mailto:contact@wearegoodai.com)

</div>
