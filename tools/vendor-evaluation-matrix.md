# Vendor Evaluation Matrix

> "Build vs. buy is not a technology decision. It's a strategic decision about where you want to compete."

## Purpose

This framework helps evaluate whether to build an AI solution in-house, partner with vendors, or use a hybrid approach. It provides structured criteria for comparing options and making defensible decisions.

---

## The Build vs. Buy Decision

### When to Build

| Factor | Build is Better When |
|--------|---------------------|
| **Competitive Advantage** | AI capability is core to your differentiation |
| **Data Sensitivity** | Data cannot leave your environment |
| **Customization** | Off-the-shelf won't meet unique requirements |
| **Control** | You need full control over roadmap and changes |
| **Long-term Cost** | Volume/scale makes ownership cheaper over time |
| **Capability Building** | You want to develop internal AI expertise |

### When to Buy

| Factor | Buy is Better When |
|--------|-------------------|
| **Speed to Value** | You need results in weeks, not months |
| **Commodity Problem** | The use case is well-established (e.g., OCR, translation) |
| **Resource Constraints** | You lack AI/ML talent or don't want to hire |
| **Risk Reduction** | Proven solution reduces implementation risk |
| **Maintenance Burden** | You don't want to maintain AI infrastructure |
| **Cost at Low Scale** | Volume doesn't justify build investment |

---

## Part 1: Build vs. Buy Assessment

### 1.1 Strategic Fit Questionnaire

Score each question 1-5 (1 = Strongly favors Buy, 5 = Strongly favors Build)

| # | Question | Score (1-5) |
|---|----------|-------------|
| 1 | Is this AI capability core to our competitive differentiation? | |
| 2 | Do we have the internal talent to build and maintain this? | |
| 3 | Is our use case unique enough that vendors won't meet our needs? | |
| 4 | Do we have sensitive data that cannot be processed externally? | |
| 5 | Is the problem domain stable (vs. rapidly evolving)? | |
| 6 | Do we need full control over the algorithm and model? | |
| 7 | Will we operate at scale that justifies build investment? | |
| 8 | Is time-to-value less critical than long-term capability? | |
| 9 | Do we want to own the IP and models? | |
| 10 | Is this a multi-year strategic investment? | |
| **TOTAL** | | **/50** |

**Interpretation:**
- 40-50: Strong Build case
- 30-39: Lean Build, consider hybrid
- 20-29: Lean Buy, consider hybrid
- 10-19: Strong Buy case

### 1.2 Build vs. Buy Comparison

| Dimension | Build | Buy | Hybrid |
|-----------|-------|-----|--------|
| **Time to pilot** | weeks | weeks | weeks |
| **Time to production** | months | months | months |
| **Upfront cost** | $ | $ | $ |
| **Annual operating cost** | $ | $ | $ |
| **3-year TCO** | $ | $ | $ |
| **Internal resources required** | FTEs | FTEs | FTEs |
| **External resources required** | FTEs | FTEs | FTEs |
| **Customization flexibility** | High/Med/Low | High/Med/Low | High/Med/Low |
| **Vendor dependency** | None | High | Medium |
| **Data privacy risk** | Low | Med/High | Medium |
| **Maintenance burden** | High | Low | Medium |
| **Upgrade path** | Self-directed | Vendor-directed | Mixed |

---

## Part 2: Vendor Evaluation Criteria

### 2.1 Evaluation Dimensions

| Dimension | Weight | Description |
|-----------|--------|-------------|
| **Functional Fit** | 25% | Does it solve our problem? |
| **Technical Fit** | 20% | Does it work with our stack? |
| **Vendor Viability** | 15% | Will the vendor be around? |
| **Cost** | 15% | Total cost of ownership |
| **Implementation** | 10% | How hard to deploy? |
| **Support & SLA** | 10% | What happens when it breaks? |
| **Security & Compliance** | 5% | Does it meet our requirements? |

### 2.2 Detailed Scoring Rubric

#### Functional Fit (25%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| Core feature coverage | 30% | <50% of requirements | 70-85% of requirements | >90% of requirements |
| Out-of-box accuracy/performance | 25% | Below acceptable threshold | Meets minimum threshold | Exceeds target threshold |
| Customization capability | 20% | No customization | Limited customization | Full customization |
| Roadmap alignment | 15% | Misaligned with our needs | Some alignment | Strong alignment |
| Industry/domain fit | 10% | Generic only | Some industry features | Purpose-built for our industry |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

#### Technical Fit (20%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| Integration with existing systems | 30% | Major custom work | Standard APIs available | Pre-built connectors |
| Deployment model fit | 25% | Only model we can't use | Supports our model | Flexible deployment |
| Data format compatibility | 20% | Significant transformation | Some transformation | Native compatibility |
| Scalability | 15% | Won't scale to our needs | Scales with effort | Scales automatically |
| Performance/latency | 10% | Doesn't meet requirements | Meets requirements | Exceeds requirements |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

#### Vendor Viability (15%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| Financial stability | 30% | Startup, funding uncertain | Funded, growing | Profitable/established |
| Market position | 25% | Unknown/niche | Emerging player | Market leader |
| Customer base | 20% | Few customers | Growing base | Large, reference-able |
| Product maturity | 15% | Early stage | Maturing | Mature, stable |
| Company trajectory | 10% | Declining/uncertain | Stable | Growing strongly |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

#### Cost (15%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| License/subscription cost | 35% | >150% of budget | 100-150% of budget | Within budget |
| Implementation cost | 25% | Significant hidden costs | Moderate additional | Transparent, included |
| Ongoing operational cost | 20% | High maintenance burden | Moderate burden | Low/included |
| Cost scalability | 10% | Unpredictable at scale | Linear scaling | Volume discounts |
| Contract flexibility | 10% | Long lock-in, rigid | Standard terms | Flexible, favorable |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

#### Implementation (10%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| Time to value | 35% | >6 months | 3-6 months | <3 months |
| Implementation complexity | 30% | Major project | Moderate effort | Quick start |
| Professional services quality | 20% | Poor/unavailable | Adequate | Excellent |
| Documentation/training | 15% | Poor | Adequate | Comprehensive |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

#### Support & SLA (10%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| SLA guarantees | 35% | No SLA | Standard SLA | Enterprise SLA |
| Support responsiveness | 30% | Slow/email only | Business hours | 24/7 with named rep |
| Issue resolution track record | 20% | Poor reviews | Mixed reviews | Strong reviews |
| Escalation path | 15% | Unclear | Defined process | Direct access |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

#### Security & Compliance (5%)

| Criterion | Weight | 1 (Poor) | 3 (Adequate) | 5 (Excellent) |
|-----------|--------|----------|--------------|---------------|
| Data handling practices | 30% | Concerning | Standard | Best-in-class |
| Certifications | 25% | None relevant | Some relevant | All required |
| Audit capabilities | 20% | No audit trail | Basic logging | Comprehensive audit |
| Compliance with our requirements | 25% | Gaps exist | Mostly compliant | Fully compliant |

**Vendor A Score:** ___ / 5
**Vendor B Score:** ___ / 5
**Vendor C Score:** ___ / 5

---

## Part 3: Vendor Comparison Summary

### 3.1 Weighted Score Calculation

| Dimension | Weight | Vendor A | Vendor B | Vendor C | Build |
|-----------|--------|----------|----------|----------|-------|
| Functional Fit | 25% | /5 = | /5 = | /5 = | /5 = |
| Technical Fit | 20% | /5 = | /5 = | /5 = | /5 = |
| Vendor Viability | 15% | /5 = | /5 = | /5 = | N/A |
| Cost | 15% | /5 = | /5 = | /5 = | /5 = |
| Implementation | 10% | /5 = | /5 = | /5 = | /5 = |
| Support & SLA | 10% | /5 = | /5 = | /5 = | /5 = |
| Security & Compliance | 5% | /5 = | /5 = | /5 = | /5 = |
| **WEIGHTED TOTAL** | **100%** | **/5** | **/5** | **/5** | **/5** |

### 3.2 Total Cost of Ownership (3-Year)

| Cost Element | Vendor A | Vendor B | Vendor C | Build |
|--------------|----------|----------|----------|-------|
| Year 0 (Implementation) | $ | $ | $ | $ |
| Year 1 (License + Ops) | $ | $ | $ | $ |
| Year 2 (License + Ops) | $ | $ | $ | $ |
| Year 3 (License + Ops) | $ | $ | $ | $ |
| **3-Year TCO** | **$** | **$** | **$** | **$** |
| **Monthly Equivalent** | $ | $ | $ | $ |

### 3.3 Risk Assessment

| Risk | Vendor A | Vendor B | Vendor C | Build |
|------|----------|----------|----------|-------|
| Vendor lock-in | H/M/L | H/M/L | H/M/L | N/A |
| Technology obsolescence | H/M/L | H/M/L | H/M/L | H/M/L |
| Data security | H/M/L | H/M/L | H/M/L | H/M/L |
| Implementation failure | H/M/L | H/M/L | H/M/L | H/M/L |
| Talent dependency | H/M/L | H/M/L | H/M/L | H/M/L |
| Cost overrun | H/M/L | H/M/L | H/M/L | H/M/L |

---

## Part 4: Vendor Due Diligence

### 4.1 Reference Check Template

**Customer Reference:** _______________
**Contact:** _______________
**Date:** _______________

| Question | Response | Notes |
|----------|----------|-------|
| How long have you been using the solution? | | |
| What problem does it solve for you? | | |
| How was the implementation experience? | | |
| What's the ongoing support quality like? | | |
| Have you had any major issues? How were they resolved? | | |
| How has the vendor evolved the product? | | |
| Would you choose this vendor again? Why/why not? | | |
| What would you do differently? | | |
| What's your overall satisfaction (1-10)? | | |

### 4.2 Technical Proof of Concept

| POC Criterion | Pass/Fail | Notes |
|---------------|-----------|-------|
| Successfully ingests our data format | | |
| Meets accuracy threshold on our test set | | |
| Meets latency requirements | | |
| Integrates with [System A] | | |
| Integrates with [System B] | | |
| Handles expected volume | | |
| Security review passed | | |
| **Overall POC Result** | **PASS/FAIL** | |

### 4.3 Contract Review Checklist

| Item | Acceptable? | Notes |
|------|-------------|-------|
| License scope clear | ☐ | |
| Pricing predictable | ☐ | |
| Term length appropriate | ☐ | |
| Termination rights | ☐ | |
| Data ownership clear | ☐ | |
| Data portability guaranteed | ☐ | |
| SLA penalties adequate | ☐ | |
| Liability caps acceptable | ☐ | |
| IP rights clear | ☐ | |
| Audit rights included | ☐ | |
| Change control process | ☐ | |

---

## Part 5: Decision and Recommendation

### 5.1 Decision Matrix Summary

| Option | Weighted Score | 3-Year TCO | Risk Level | Time to Value |
|--------|----------------|------------|------------|---------------|
| Vendor A | /5 | $ | H/M/L | months |
| Vendor B | /5 | $ | H/M/L | months |
| Vendor C | /5 | $ | H/M/L | months |
| Build | /5 | $ | H/M/L | months |

### 5.2 Recommendation

```markdown
## Recommendation: [Vendor Name / Build / Hybrid]

### Rationale
1. [Primary reason]
2. [Secondary reason]
3. [Tertiary reason]

### Key Advantages
- [Advantage 1]
- [Advantage 2]
- [Advantage 3]

### Key Risks and Mitigations
- [Risk 1]: [Mitigation]
- [Risk 2]: [Mitigation]

### Alternatives Considered
- [Alternative 1]: Rejected because [reason]
- [Alternative 2]: Rejected because [reason]

### Next Steps
1. [Immediate next step]
2. [Following step]
3. [Timeline for decision/contract]

### Approval Required From
- [Name/Role]: [Type of approval needed]
```

---

## Appendix: Vendor Evaluation Questions

### Technical Discovery Questions

1. What deployment options are available (cloud, on-prem, hybrid)?
2. What APIs/SDKs are available for integration?
3. What's the typical implementation timeline?
4. How is the model trained and updated?
5. Can we bring our own data/models?
6. What's the system architecture?
7. How is high availability achieved?
8. What's the disaster recovery approach?

### Security & Compliance Questions

1. What security certifications do you have (SOC 2, ISO 27001, etc.)?
2. How is data encrypted (at rest, in transit)?
3. Where is data processed and stored geographically?
4. What's your data retention policy?
5. How do you handle data deletion requests?
6. What access controls are available?
7. How do you handle security incidents?
8. Can we conduct security audits?

### Commercial Questions

1. What's included in the base price?
2. What triggers additional costs?
3. How does pricing scale with volume?
4. What's the typical contract term?
5. What are the termination provisions?
6. What's included in support?
7. What are the SLA terms and penalties?
8. Is there a pilot/trial option?

### Strategic Questions

1. What's on your product roadmap?
2. Who are your largest customers in our industry?
3. How do you handle customer feature requests?
4. What's your company's funding/financial status?
5. How do you differentiate from [competitor]?
6. What partnerships do you have?
7. How often do you release updates?
8. What's your customer retention rate?
