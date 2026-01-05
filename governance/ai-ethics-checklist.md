# AI Ethics Checklist

> "Ethical AI is not a constraint on innovation. It's a requirement for sustainable innovation."

## Purpose

This checklist ensures AI pilots are reviewed for ethical considerations before deployment. It helps identify potential harms, ensures appropriate safeguards, and creates documentation for governance and compliance.

**When to use:** Before any AI system goes into production or user testing.

---

## Pre-Flight Ethics Review

### Quick Assessment (5 Minutes)

Answer these questions before proceeding with detailed review:

| # | Question | Yes | No | Unsure |
|---|----------|-----|-----|--------|
| 1 | Does this AI make or influence decisions about people? | ☐ | ☐ | ☐ |
| 2 | Could errors cause financial, physical, or emotional harm? | ☐ | ☐ | ☐ |
| 3 | Does this AI use personal or sensitive data? | ☐ | ☐ | ☐ |
| 4 | Could this AI affect different groups unequally? | ☐ | ☐ | ☐ |
| 5 | Is this AI operating in a regulated domain? | ☐ | ☐ | ☐ |

**Scoring:**
- Any "Yes" or "Unsure" → Complete full ethics review
- All "No" → Document rationale and proceed with abbreviated review

---

## Part 1: Impact Assessment

### 1.1 Stakeholder Impact Analysis

| Stakeholder Group | How AI Affects Them | Potential Benefits | Potential Harms | Risk Level |
|-------------------|---------------------|-------------------|-----------------|------------|
| **Primary users** | | | | H/M/L |
| **Subjects of decisions** | | | | H/M/L |
| **Employees** | | | | H/M/L |
| **Customers** | | | | H/M/L |
| **Communities** | | | | H/M/L |
| **Vulnerable populations** | | | | H/M/L |

### 1.2 Harm Assessment

| Harm Category | Applicable? | Description | Severity | Likelihood | Mitigation |
|---------------|-------------|-------------|----------|------------|------------|
| **Physical safety** | ☐ | | | | |
| **Financial harm** | ☐ | | | | |
| **Psychological harm** | ☐ | | | | |
| **Privacy violation** | ☐ | | | | |
| **Discrimination** | ☐ | | | | |
| **Loss of autonomy** | ☐ | | | | |
| **Manipulation** | ☐ | | | | |
| **Environmental impact** | ☐ | | | | |
| **Democratic/social harm** | ☐ | | | | |

### 1.3 Risk Classification

Based on harm assessment, classify the AI system:

| Risk Level | Criteria | Review Required |
|------------|----------|-----------------|
| ☐ **Critical** | Potential for severe, irreversible harm | Full board review |
| ☐ **High** | Significant impact on individuals or groups | Senior leadership + ethics review |
| ☐ **Medium** | Moderate impact, reversible | Manager + ethics checklist |
| ☐ **Low** | Minimal individual impact | Self-assessment + documentation |

---

## Part 2: Fairness and Bias

### 2.1 Protected Characteristics Assessment

| Characteristic | Present in Data? | Used in Model? | Proxy Risk? | Mitigation |
|----------------|------------------|----------------|-------------|------------|
| Race/Ethnicity | ☐ | ☐ | ☐ | |
| Gender | ☐ | ☐ | ☐ | |
| Age | ☐ | ☐ | ☐ | |
| Disability | ☐ | ☐ | ☐ | |
| Religion | ☐ | ☐ | ☐ | |
| National origin | ☐ | ☐ | ☐ | |
| Sexual orientation | ☐ | ☐ | ☐ | |
| Socioeconomic status | ☐ | ☐ | ☐ | |
| Geographic location | ☐ | ☐ | ☐ | |

**Proxy Risk:** Features that may correlate with protected characteristics (e.g., zip code → race, name → gender)

### 2.2 Fairness Metrics

| Metric | Definition | Measured? | Result | Acceptable? |
|--------|------------|-----------|--------|-------------|
| **Demographic parity** | Equal positive rates across groups | ☐ | | ☐ |
| **Equalized odds** | Equal TPR and FPR across groups | ☐ | | ☐ |
| **Predictive parity** | Equal precision across groups | ☐ | | ☐ |
| **Individual fairness** | Similar individuals treated similarly | ☐ | | ☐ |

### 2.3 Bias Testing Checklist

- [ ] Training data reviewed for historical bias
- [ ] Data collection process assessed for sampling bias
- [ ] Model performance tested across demographic groups
- [ ] Error analysis by group completed
- [ ] Bias testing results documented
- [ ] Mitigation strategies implemented where needed
- [ ] Ongoing monitoring plan established

---

## Part 3: Transparency and Explainability

### 3.1 Transparency Assessment

| Requirement | Status | Evidence |
|-------------|--------|----------|
| **AI disclosure** | | |
| Users know they're interacting with AI | ☐ Yes ☐ No ☐ N/A | |
| Clear AI vs. human distinction | ☐ Yes ☐ No ☐ N/A | |
| **Decision transparency** | | |
| Decisions can be explained to affected parties | ☐ Yes ☐ No ☐ N/A | |
| Explanation is understandable to non-experts | ☐ Yes ☐ No ☐ N/A | |
| **System transparency** | | |
| Purpose of AI system is documented | ☐ Yes ☐ No ☐ N/A | |
| Limitations are documented | ☐ Yes ☐ No ☐ N/A | |
| Data sources are documented | ☐ Yes ☐ No ☐ N/A | |

### 3.2 Explainability Requirements

| Decision Type | Explanation Required | Method | Validated? |
|---------------|---------------------|--------|------------|
| Individual prediction | ☐ | [SHAP/LIME/other] | ☐ |
| Model behavior | ☐ | [Feature importance/rules] | ☐ |
| Training data influence | ☐ | [Data provenance] | ☐ |
| Confidence/uncertainty | ☐ | [Probability/confidence] | ☐ |

### 3.3 Right to Explanation

For decisions significantly affecting individuals:

- [ ] Explanation mechanism exists
- [ ] Explanation is timely (provided when decision is made)
- [ ] Explanation is meaningful (relevant to the decision)
- [ ] Explanation is accessible (understandable format)
- [ ] Appeal process is available

---

## Part 4: Privacy and Data Protection

### 4.1 Data Inventory

| Data Type | Source | Contains PII? | Consent Obtained? | Retention Period |
|-----------|--------|---------------|-------------------|------------------|
| | | ☐ | ☐ | |
| | | ☐ | ☐ | |
| | | ☐ | ☐ | |

### 4.2 Privacy Checklist

| Requirement | Status | Notes |
|-------------|--------|-------|
| **Data minimization** | | |
| Only necessary data collected | ☐ | |
| Data not retained longer than needed | ☐ | |
| **Purpose limitation** | | |
| Data used only for stated purpose | ☐ | |
| Secondary use explicitly consented | ☐ | |
| **Security** | | |
| Data encrypted at rest | ☐ | |
| Data encrypted in transit | ☐ | |
| Access controls implemented | ☐ | |
| **Rights** | | |
| Data subject access mechanism exists | ☐ | |
| Deletion/correction process exists | ☐ | |
| Opt-out mechanism available | ☐ | |

### 4.3 Privacy Impact Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| Unauthorized access | H/M/L | H/M/L | |
| Data breach | H/M/L | H/M/L | |
| Re-identification | H/M/L | H/M/L | |
| Function creep | H/M/L | H/M/L | |
| Third-party sharing | H/M/L | H/M/L | |

---

## Part 5: Accountability and Governance

### 5.1 Accountability Assignment

| Role | Individual/Team | Responsibilities |
|------|-----------------|------------------|
| **AI System Owner** | | Overall accountability for system |
| **Technical Lead** | | Model development and maintenance |
| **Ethics Reviewer** | | Ethics assessment and monitoring |
| **Data Steward** | | Data quality and privacy |
| **Business Owner** | | Business decisions and outcomes |
| **Escalation Contact** | | Issue resolution |

### 5.2 Human Oversight

| Oversight Type | Implemented? | Description |
|----------------|--------------|-------------|
| **Human-in-the-loop** | ☐ | Human approves every decision |
| **Human-on-the-loop** | ☐ | Human monitors and can intervene |
| **Human-in-command** | ☐ | Human can override/disable system |

For high-stakes decisions:
- [ ] Human review required before action
- [ ] Human can override AI decision
- [ ] Override is logged and reviewed
- [ ] Escalation path defined

### 5.3 Monitoring and Audit

| Monitoring Type | Frequency | Owner | Documented? |
|-----------------|-----------|-------|-------------|
| Performance monitoring | | | ☐ |
| Bias/fairness monitoring | | | ☐ |
| Error analysis | | | ☐ |
| User feedback review | | | ☐ |
| Ethics incident review | | | ☐ |

---

## Part 6: Regulatory and Legal Compliance

### 6.1 Applicable Regulations

| Regulation | Applicable? | Compliance Status | Notes |
|------------|-------------|-------------------|-------|
| GDPR (EU data protection) | ☐ | ☐ Compliant | |
| CCPA (California privacy) | ☐ | ☐ Compliant | |
| HIPAA (US healthcare) | ☐ | ☐ Compliant | |
| FCRA (US credit) | ☐ | ☐ Compliant | |
| ECOA (US lending) | ☐ | ☐ Compliant | |
| ADA (US disability) | ☐ | ☐ Compliant | |
| EU AI Act | ☐ | ☐ Compliant | |
| Industry-specific regulations | ☐ | ☐ Compliant | |

### 6.2 Legal Review

- [ ] Legal team has reviewed AI use case
- [ ] Liability considerations documented
- [ ] Contractual obligations reviewed
- [ ] Intellectual property rights clear
- [ ] Required disclosures identified

---

## Part 7: Sign-Off and Approval

### 7.1 Ethics Review Summary

```markdown
## AI System: [Name]
## Review Date: [Date]
## Reviewer: [Name]

### Risk Classification: [Critical/High/Medium/Low]

### Key Findings:
1. [Finding 1]
2. [Finding 2]
3. [Finding 3]

### Required Actions:
1. [Action 1] - Owner: [Name] - Due: [Date]
2. [Action 2] - Owner: [Name] - Due: [Date]

### Conditions for Approval:
- [Condition 1]
- [Condition 2]

### Recommendation: [Approve / Approve with Conditions / Reject / Defer]
```

### 7.2 Approval Sign-Off

| Role | Name | Decision | Signature | Date |
|------|------|----------|-----------|------|
| Ethics Reviewer | | Approve/Reject | | |
| Technical Lead | | Approve/Reject | | |
| Business Owner | | Approve/Reject | | |
| Legal (if required) | | Approve/Reject | | |
| Executive (if High/Critical) | | Approve/Reject | | |

---

## Appendix: Ethics Principles Reference

### Core Principles

| Principle | Description | Questions to Ask |
|-----------|-------------|------------------|
| **Beneficence** | AI should benefit people and society | Does this AI create genuine value? |
| **Non-maleficence** | AI should not cause harm | What harms could this AI cause? |
| **Autonomy** | Respect human decision-making | Does this preserve human choice? |
| **Justice** | Fair distribution of benefits and burdens | Who benefits? Who bears the risks? |
| **Transparency** | Openness about AI capabilities and limitations | Can we explain how it works? |
| **Accountability** | Clear responsibility for AI outcomes | Who is responsible when it fails? |

### Red Flags Requiring Escalation

- Any potential for physical harm
- Decisions affecting legal rights or status
- Use in vulnerable populations without extra safeguards
- Significant fairness disparities across groups
- Inability to explain critical decisions
- Lack of human oversight for high-stakes decisions
- Regulatory non-compliance
- Stakeholder objections or concerns

---

## Review Schedule

| Review Type | Trigger | Required Documentation |
|-------------|---------|------------------------|
| **Initial review** | Before deployment | Full checklist |
| **Periodic review** | Every 6-12 months | Abbreviated checklist + monitoring data |
| **Triggered review** | Significant change, incident, or complaint | Full checklist |
| **Sunset review** | Before decommissioning | Data handling and lessons learned |
