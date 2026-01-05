# Bias Testing Protocol

> "Bias in AI is not a bug to be fixed. It's a risk to be managed continuously."

## Purpose

This protocol provides a systematic approach to testing AI systems for bias. It ensures that models are evaluated for unfair treatment of different groups before deployment and during operation.

---

## When to Conduct Bias Testing

| Stage | Required | Type of Testing |
|-------|----------|-----------------|
| Pre-development | ☐ | Data bias assessment |
| Post-training | ☐ | Model bias evaluation |
| Pre-deployment | ☐ | Full bias audit |
| Post-deployment | ☐ | Ongoing monitoring |
| After significant changes | ☐ | Regression testing |
| Periodic review | ☐ | Scheduled audit (6-12 months) |

---

## Part 1: Define Protected Groups

### 1.1 Identify Relevant Attributes

| Attribute | Legally Protected? | Business Sensitive? | Available in Data? | Include in Testing |
|-----------|-------------------|--------------------|--------------------|-------------------|
| Race/Ethnicity | ☐ | ☐ | ☐ | ☐ |
| Gender | ☐ | ☐ | ☐ | ☐ |
| Age | ☐ | ☐ | ☐ | ☐ |
| Disability status | ☐ | ☐ | ☐ | ☐ |
| Religion | ☐ | ☐ | ☐ | ☐ |
| National origin | ☐ | ☐ | ☐ | ☐ |
| Marital status | ☐ | ☐ | ☐ | ☐ |
| Veteran status | ☐ | ☐ | ☐ | ☐ |
| Pregnancy status | ☐ | ☐ | ☐ | ☐ |
| Sexual orientation | ☐ | ☐ | ☐ | ☐ |
| Socioeconomic status | ☐ | ☐ | ☐ | ☐ |
| Geographic location | ☐ | ☐ | ☐ | ☐ |
| [Other: _______] | ☐ | ☐ | ☐ | ☐ |

### 1.2 Define Group Boundaries

For each attribute included in testing:

| Attribute | Groups Defined | Minimum Group Size | Notes |
|-----------|----------------|-------------------|-------|
| [Attribute] | [Group A, Group B, ...] | [n] | |

**Minimum group size recommendation:** At least 100 samples per group for statistical validity.

### 1.3 Proxy Variable Analysis

| Protected Attribute | Potential Proxies | Correlation | Action |
|--------------------|-------------------|-------------|--------|
| Race | ZIP code, name patterns, school district | | |
| Gender | First name, job title | | |
| Age | Graduation year, work experience | | |
| Income | ZIP code, education level | | |
| [Other] | | | |

---

## Part 2: Data Bias Assessment

### 2.1 Representation Analysis

| Group | Population % | Training Data % | Test Data % | Imbalance Ratio |
|-------|--------------|-----------------|-------------|-----------------|
| [Group A] | | | | |
| [Group B] | | | | |
| [Group C] | | | | |

**Imbalance threshold:** Flag if any group is <50% or >200% of population proportion.

### 2.2 Label Distribution by Group

| Group | Positive Label % | Negative Label % | Historical Bias Risk |
|-------|------------------|------------------|----------------------|
| [Group A] | | | H/M/L |
| [Group B] | | | H/M/L |
| [Group C] | | | H/M/L |

**Historical bias check:** Are label differences due to legitimate factors or historical discrimination?

### 2.3 Feature Distribution by Group

For each key feature:

| Feature | Group A Mean | Group B Mean | Group A Std | Group B Std | Significant Difference? |
|---------|--------------|--------------|-------------|-------------|------------------------|
| [Feature 1] | | | | | ☐ |
| [Feature 2] | | | | | ☐ |
| [Feature 3] | | | | | ☐ |

### 2.4 Missing Data Analysis

| Feature | Group A Missing % | Group B Missing % | Differential? | Action |
|---------|-------------------|-------------------|---------------|--------|
| [Feature 1] | | | ☐ | |
| [Feature 2] | | | ☐ | |

---

## Part 3: Model Bias Evaluation

### 3.1 Performance Metrics by Group

#### Classification Models

| Metric | Group A | Group B | Group C | Max Disparity | Threshold | Pass? |
|--------|---------|---------|---------|---------------|-----------|-------|
| Accuracy | | | | | | ☐ |
| Precision | | | | | | ☐ |
| Recall (TPR) | | | | | | ☐ |
| False Positive Rate | | | | | | ☐ |
| False Negative Rate | | | | | | ☐ |
| Selection Rate | | | | | | ☐ |
| F1 Score | | | | | | ☐ |

#### Regression Models

| Metric | Group A | Group B | Group C | Max Disparity | Threshold | Pass? |
|--------|---------|---------|---------|---------------|-----------|-------|
| RMSE | | | | | | ☐ |
| MAE | | | | | | ☐ |
| Mean Prediction | | | | | | ☐ |
| Prediction Std Dev | | | | | | ☐ |

### 3.2 Fairness Metrics

| Metric | Definition | Formula | Value | Threshold | Pass? |
|--------|------------|---------|-------|-----------|-------|
| **Demographic Parity** | Equal selection rates | P(Ŷ=1\|A=a) = P(Ŷ=1\|A=b) | | 0.8-1.2 | ☐ |
| **Equalized Odds** | Equal TPR and FPR | TPR_a = TPR_b, FPR_a = FPR_b | | ±0.1 | ☐ |
| **Equal Opportunity** | Equal TPR only | TPR_a = TPR_b | | ±0.1 | ☐ |
| **Predictive Parity** | Equal precision | PPV_a = PPV_b | | ±0.1 | ☐ |
| **Calibration** | Equal probability calibration | P(Y=1\|Ŷ=p,A=a) = p | | | ☐ |
| **Disparate Impact** | 80% rule | min(rate_a/rate_b, rate_b/rate_a) | | ≥0.8 | ☐ |

### 3.3 Intersectional Analysis

Test for bias in group intersections (e.g., Black women, young men):

| Intersection | n | Selection Rate | TPR | FPR | Flagged? |
|--------------|---|----------------|-----|-----|----------|
| [Group A × Group X] | | | | | ☐ |
| [Group A × Group Y] | | | | | ☐ |
| [Group B × Group X] | | | | | ☐ |
| [Group B × Group Y] | | | | | ☐ |

---

## Part 4: Error Analysis

### 4.1 False Positive Analysis by Group

| Group | FP Count | FP Rate | Common FP Patterns | Business Impact |
|-------|----------|---------|-------------------|-----------------|
| [Group A] | | | | |
| [Group B] | | | | |

**Question:** Who is harmed by false positives? Is harm distributed equitably?

### 4.2 False Negative Analysis by Group

| Group | FN Count | FN Rate | Common FN Patterns | Business Impact |
|-------|----------|---------|-------------------|-----------------|
| [Group A] | | | | |
| [Group B] | | | | |

**Question:** Who is harmed by false negatives? Is harm distributed equitably?

### 4.3 Prediction Distribution by Group

```
[Include histogram or density plot of prediction scores by group]

Group A: Mean = [X], Median = [Y], Std = [Z]
Group B: Mean = [X], Median = [Y], Std = [Z]
```

### 4.4 Threshold Sensitivity Analysis

| Threshold | Group A TPR | Group B TPR | Group A FPR | Group B FPR | Disparity |
|-----------|-------------|-------------|-------------|-------------|-----------|
| 0.3 | | | | | |
| 0.4 | | | | | |
| 0.5 | | | | | |
| 0.6 | | | | | |
| 0.7 | | | | | |

**Question:** Is there a threshold that achieves acceptable performance with minimal disparity?

---

## Part 5: Statistical Significance Testing

### 5.1 Significance Tests

| Comparison | Test Used | Test Statistic | p-value | Significant? |
|------------|-----------|----------------|---------|--------------|
| Accuracy: Group A vs B | [Chi-square/t-test] | | | ☐ |
| TPR: Group A vs B | | | | ☐ |
| FPR: Group A vs B | | | | ☐ |
| Selection Rate: A vs B | | | | ☐ |

### 5.2 Confidence Intervals

| Metric | Group A [95% CI] | Group B [95% CI] | Overlap? |
|--------|------------------|------------------|----------|
| Accuracy | [lower, upper] | [lower, upper] | ☐ |
| Precision | [lower, upper] | [lower, upper] | ☐ |
| Recall | [lower, upper] | [lower, upper] | ☐ |

### 5.3 Effect Size

| Metric Comparison | Effect Size (Cohen's d) | Interpretation |
|-------------------|-------------------------|----------------|
| Accuracy difference | | Small/Medium/Large |
| TPR difference | | Small/Medium/Large |
| FPR difference | | Small/Medium/Large |

**Interpretation guide:** |d| < 0.2 = small, 0.2-0.8 = medium, > 0.8 = large

---

## Part 6: Mitigation Strategies

### 6.1 Pre-processing Mitigations

| Strategy | Description | Applicable? | Implemented? | Result |
|----------|-------------|-------------|--------------|--------|
| **Resampling** | Over/undersample to balance groups | ☐ | ☐ | |
| **Reweighting** | Assign weights to balance influence | ☐ | ☐ | |
| **Data augmentation** | Generate synthetic samples | ☐ | ☐ | |
| **Feature removal** | Remove proxy variables | ☐ | ☐ | |
| **Label correction** | Fix historical label bias | ☐ | ☐ | |

### 6.2 In-processing Mitigations

| Strategy | Description | Applicable? | Implemented? | Result |
|----------|-------------|-------------|--------------|--------|
| **Regularization** | Add fairness constraint to loss | ☐ | ☐ | |
| **Adversarial debiasing** | Train adversary to remove bias | ☐ | ☐ | |
| **Fair representation** | Learn fair embeddings | ☐ | ☐ | |
| **Constrained optimization** | Optimize with fairness constraints | ☐ | ☐ | |

### 6.3 Post-processing Mitigations

| Strategy | Description | Applicable? | Implemented? | Result |
|----------|-------------|-------------|--------------|--------|
| **Threshold adjustment** | Different thresholds per group | ☐ | ☐ | |
| **Calibration** | Calibrate probabilities per group | ☐ | ☐ | |
| **Reject option** | Abstain on borderline cases | ☐ | ☐ | |
| **Human review** | Route uncertain cases to humans | ☐ | ☐ | |

### 6.4 Mitigation Trade-offs

| Mitigation | Fairness Improvement | Accuracy Impact | Business Impact | Decision |
|------------|----------------------|-----------------|-----------------|----------|
| [Mitigation 1] | +[X]% | -[Y]% | [Description] | ☐ Accept |
| [Mitigation 2] | +[X]% | -[Y]% | [Description] | ☐ Accept |

---

## Part 7: Documentation and Reporting

### 7.1 Bias Testing Summary

```markdown
## Bias Testing Report: [Model Name]

**Test Date:** [Date]
**Tester:** [Name]
**Model Version:** [Version]

### Summary
- **Groups Tested:** [List]
- **Metrics Evaluated:** [List]
- **Overall Result:** PASS / FAIL / CONDITIONAL PASS

### Key Findings
1. [Finding 1]
2. [Finding 2]
3. [Finding 3]

### Fairness Metrics Summary
| Metric | Value | Threshold | Status |
|--------|-------|-----------|--------|
| Demographic Parity | | | |
| Equalized Odds | | | |
| Disparate Impact | | | |

### Required Actions
1. [Action 1] - Owner: [Name] - Due: [Date]
2. [Action 2] - Owner: [Name] - Due: [Date]

### Mitigations Applied
- [Mitigation 1]: [Result]
- [Mitigation 2]: [Result]

### Residual Risks
- [Risk 1]: [Mitigation plan]
- [Risk 2]: [Mitigation plan]

### Approval
- [ ] Bias testing passed or mitigated
- [ ] Residual risks acceptable
- [ ] Monitoring plan in place
```

### 7.2 Approval Sign-off

| Role | Name | Decision | Date |
|------|------|----------|------|
| Data Scientist | | ☐ Pass ☐ Fail | |
| Ethics Reviewer | | ☐ Pass ☐ Fail | |
| Business Owner | | ☐ Accept risks | |
| Legal (if required) | | ☐ Approved | |

---

## Part 8: Ongoing Monitoring

### 8.1 Monitoring Metrics

| Metric | Baseline | Threshold | Frequency | Alert |
|--------|----------|-----------|-----------|-------|
| Selection rate by group | | ±[X]% change | | ☐ |
| TPR by group | | ±[X]% change | | ☐ |
| FPR by group | | ±[X]% change | | ☐ |
| Disparate impact ratio | | <0.8 | | ☐ |

### 8.2 Drift Detection

| Metric | Detection Method | Threshold | Action if Triggered |
|--------|------------------|-----------|---------------------|
| Group distribution | Chi-square test | p < 0.05 | Investigate |
| Performance disparity | Disparity ratio | >1.2 or <0.8 | Review |
| Selection rate | Proportion test | ±10% change | Alert |

### 8.3 Incident Response

| Trigger | Severity | Response | Timeline |
|---------|----------|----------|----------|
| Disparity exceeds threshold | Medium | Investigate root cause | 48 hours |
| Complaint of discrimination | High | Immediate review | 24 hours |
| Regulatory inquiry | Critical | Full audit | Immediate |
| Significant drift detected | Medium | Retrain or adjust | 1 week |

---

## Appendix: Statistical Tests Reference

### Choosing the Right Test

| Comparison | Data Type | Test |
|------------|-----------|------|
| Proportions (2 groups) | Binary | Chi-square, Fisher's exact |
| Proportions (3+ groups) | Binary | Chi-square |
| Means (2 groups) | Continuous | t-test, Mann-Whitney |
| Means (3+ groups) | Continuous | ANOVA, Kruskal-Wallis |
| Correlation | Continuous | Pearson, Spearman |

### Interpreting Disparate Impact

```
Disparate Impact Ratio = Selection Rate (Protected Group) / Selection Rate (Reference Group)

Interpretation:
- 1.0 = Perfect parity
- 0.8 - 1.25 = Generally acceptable (80% rule)
- < 0.8 = Potential adverse impact
- > 1.25 = Potential reverse discrimination
```

### Sample Size Requirements

For detecting a 10% difference in rates with 80% power:

| Base Rate | Required n per Group |
|-----------|---------------------|
| 10% | ~400 |
| 30% | ~300 |
| 50% | ~200 |
| 70% | ~300 |
| 90% | ~400 |
