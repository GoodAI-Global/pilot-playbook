# Model Card Template

> "A model without documentation is a liability waiting to happen."

## Purpose

Model cards provide standardized documentation for machine learning models. They ensure transparency, enable informed decisions about model use, and support governance and compliance requirements.

**Based on:** Mitchell et al., "Model Cards for Model Reporting" (2019)

---

## Model Card: [Model Name]

### Last Updated
| Field | Value |
|-------|-------|
| Version | |
| Date | |
| Author | |
| Reviewer | |
| Status | Draft / Under Review / Approved / Deprecated |

---

## 1. Model Overview

### 1.1 Basic Information

| Field | Description |
|-------|-------------|
| **Model Name** | |
| **Model Version** | |
| **Model Type** | [Classification / Regression / Clustering / NLP / Computer Vision / etc.] |
| **Algorithm** | [Random Forest / Neural Network / XGBoost / Transformer / etc.] |
| **Framework** | [scikit-learn / PyTorch / TensorFlow / etc.] |
| **Development Date** | |
| **Developed By** | |
| **Model Owner** | |
| **License** | |

### 1.2 Model Description

**Purpose:**
```
[What problem does this model solve? What is it designed to do?]
```

**Primary Use Case:**
```
[The specific use case this model is built for]
```

**Out-of-Scope Uses:**
```
[Uses this model should NOT be applied to]
```

### 1.3 Model Architecture

```
[Describe the model architecture, layers, key hyperparameters]

Example for neural network:
- Input layer: [dimensions]
- Hidden layers: [number, size, activation]
- Output layer: [dimensions, activation]
- Total parameters: [count]
```

---

## 2. Intended Use

### 2.1 Primary Intended Uses

| Use Case | Description | Approved |
|----------|-------------|----------|
| [Use Case 1] | [Description] | ☐ |
| [Use Case 2] | [Description] | ☐ |

### 2.2 Primary Intended Users

| User Group | Description | Access Level |
|------------|-------------|--------------|
| [User Group 1] | [Description] | [Full / Limited / Read-only] |
| [User Group 2] | [Description] | [Full / Limited / Read-only] |

### 2.3 Out-of-Scope Uses

| Use Case | Reason Not Appropriate |
|----------|------------------------|
| [Prohibited Use 1] | [Reason] |
| [Prohibited Use 2] | [Reason] |

---

## 3. Training Data

### 3.1 Data Sources

| Source | Description | Records | Date Range |
|--------|-------------|---------|------------|
| [Source 1] | | | |
| [Source 2] | | | |

### 3.2 Data Composition

| Attribute | Value |
|-----------|-------|
| **Total records** | |
| **Training set size** | |
| **Validation set size** | |
| **Test set size** | |
| **Features** | [count] |
| **Target variable** | |
| **Target distribution** | [e.g., 60% class A, 40% class B] |

### 3.3 Data Preprocessing

| Step | Description | Impact |
|------|-------------|--------|
| Missing value handling | | |
| Outlier treatment | | |
| Feature encoding | | |
| Normalization/scaling | | |
| Feature selection | | |

### 3.4 Data Quality

| Dimension | Assessment | Notes |
|-----------|------------|-------|
| Completeness | [%] | |
| Accuracy | [%] | |
| Consistency | [H/M/L] | |
| Timeliness | [H/M/L] | |
| Representativeness | [H/M/L] | |

### 3.5 Known Data Limitations

```
[Describe any known limitations, biases, or gaps in the training data]
```

---

## 4. Evaluation Data

### 4.1 Test Set Description

| Attribute | Value |
|-----------|-------|
| **Source** | [Same as training / Different source] |
| **Size** | |
| **Date range** | |
| **Sampling method** | |

### 4.2 Evaluation Methodology

| Element | Description |
|---------|-------------|
| **Split strategy** | [Random / Time-based / Stratified] |
| **Cross-validation** | [K-fold / None / Other] |
| **Holdout approach** | |

---

## 5. Performance Metrics

### 5.1 Overall Performance

| Metric | Value | Threshold | Status |
|--------|-------|-----------|--------|
| **Accuracy** | | | ☐ Pass ☐ Fail |
| **Precision** | | | ☐ Pass ☐ Fail |
| **Recall** | | | ☐ Pass ☐ Fail |
| **F1 Score** | | | ☐ Pass ☐ Fail |
| **AUC-ROC** | | | ☐ Pass ☐ Fail |
| **RMSE** (if regression) | | | ☐ Pass ☐ Fail |
| **MAE** (if regression) | | | ☐ Pass ☐ Fail |

### 5.2 Performance by Segment

| Segment | Accuracy | Precision | Recall | F1 | n |
|---------|----------|-----------|--------|----|----|
| [Segment 1] | | | | | |
| [Segment 2] | | | | | |
| [Segment 3] | | | | | |
| **Overall** | | | | | |

### 5.3 Confusion Matrix (Classification)

```
                  Predicted
                  Pos    Neg
Actual   Pos      TP     FN
         Neg      FP     TN
```

| Cell | Count | Rate |
|------|-------|------|
| True Positives | | |
| True Negatives | | |
| False Positives | | |
| False Negatives | | |

### 5.4 Confidence Calibration

| Predicted Probability Range | Actual Positive Rate | Count |
|-----------------------------|----------------------|-------|
| 0.0 - 0.1 | | |
| 0.1 - 0.2 | | |
| 0.2 - 0.3 | | |
| ... | | |
| 0.9 - 1.0 | | |

### 5.5 Performance Visualization

```
[Include or link to:]
- ROC curve
- Precision-recall curve
- Calibration plot
- Confusion matrix heatmap
- Learning curves
```

---

## 6. Fairness Analysis

### 6.1 Demographic Attributes Analyzed

| Attribute | Source | Groups Analyzed |
|-----------|--------|-----------------|
| [Attribute 1] | | [List groups] |
| [Attribute 2] | | [List groups] |

### 6.2 Fairness Metrics by Group

| Group | TPR | FPR | Precision | Selection Rate |
|-------|-----|-----|-----------|----------------|
| [Group A] | | | | |
| [Group B] | | | | |
| [Group C] | | | | |
| **Disparity Ratio** | | | | |

### 6.3 Fairness Assessment

| Fairness Criterion | Definition | Met? | Evidence |
|--------------------|------------|------|----------|
| Demographic parity | Equal selection rates | ☐ | |
| Equalized odds | Equal TPR and FPR | ☐ | |
| Predictive parity | Equal precision | ☐ | |
| Calibration | Equal calibration | ☐ | |

### 6.4 Bias Mitigation

| Bias Type | Detected? | Mitigation Applied | Result |
|-----------|-----------|-------------------|--------|
| Historical bias | ☐ | | |
| Representation bias | ☐ | | |
| Measurement bias | ☐ | | |
| Aggregation bias | ☐ | | |
| Evaluation bias | ☐ | | |

---

## 7. Model Interpretability

### 7.1 Feature Importance

| Rank | Feature | Importance Score | Description |
|------|---------|------------------|-------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |

### 7.2 Explanation Methods

| Method | Available | Description |
|--------|-----------|-------------|
| Feature importance | ☐ | Global feature ranking |
| SHAP values | ☐ | Local and global explanations |
| LIME | ☐ | Local interpretable explanations |
| Partial dependence | ☐ | Feature effect visualization |
| Decision rules | ☐ | Human-readable rules |

### 7.3 Sample Explanations

```
[Provide 2-3 example predictions with explanations]

Example 1:
- Input: [key features]
- Prediction: [output]
- Explanation: [why this prediction was made]
```

---

## 8. Operational Information

### 8.1 Technical Requirements

| Requirement | Specification |
|-------------|---------------|
| **Runtime environment** | |
| **Dependencies** | |
| **Hardware requirements** | |
| **Memory requirements** | |
| **Inference time** | [avg/p50/p99] |
| **Batch size limits** | |

### 8.2 Input Specification

| Feature | Type | Range/Values | Required | Preprocessing |
|---------|------|--------------|----------|---------------|
| [Feature 1] | | | ☐ | |
| [Feature 2] | | | ☐ | |
| [Feature 3] | | | ☐ | |

### 8.3 Output Specification

| Output | Type | Range | Description |
|--------|------|-------|-------------|
| [Prediction] | | | |
| [Confidence] | | | |
| [Explanation] | | | |

### 8.4 API/Interface

```
[Document the API endpoint, request/response format]

Endpoint: [URL/method]
Request:
{
  "field1": "value",
  "field2": "value"
}

Response:
{
  "prediction": "value",
  "confidence": 0.95,
  "explanation": "..."
}
```

---

## 9. Limitations and Risks

### 9.1 Known Limitations

| Limitation | Description | Impact | Mitigation |
|------------|-------------|--------|------------|
| [Limitation 1] | | | |
| [Limitation 2] | | | |
| [Limitation 3] | | | |

### 9.2 Failure Modes

| Failure Mode | Trigger | Consequence | Safeguard |
|--------------|---------|-------------|-----------|
| [Mode 1] | [When it fails] | [What happens] | [Prevention] |
| [Mode 2] | | | |

### 9.3 Risk Assessment

| Risk | Likelihood | Impact | Mitigation | Owner |
|------|------------|--------|------------|-------|
| Model drift | H/M/L | H/M/L | | |
| Data quality degradation | H/M/L | H/M/L | | |
| Adversarial attack | H/M/L | H/M/L | | |
| Misuse | H/M/L | H/M/L | | |

---

## 10. Monitoring and Maintenance

### 10.1 Monitoring Plan

| Metric | Threshold | Frequency | Alert | Owner |
|--------|-----------|-----------|-------|-------|
| Accuracy | <[X] triggers review | | ☐ | |
| Prediction distribution | Drift >[X]% | | ☐ | |
| Input distribution | Drift >[X]% | | ☐ | |
| Latency | >[X]ms p99 | | ☐ | |
| Error rate | >[X]% | | ☐ | |

### 10.2 Retraining Policy

| Trigger | Action | Approval Required |
|---------|--------|-------------------|
| Scheduled (every [X] months) | Retrain and evaluate | ☐ |
| Performance degradation | Investigate and retrain | ☐ |
| Significant data drift | Retrain with new data | ☐ |
| Business requirement change | Redesign model | ☐ |

### 10.3 Version History

| Version | Date | Changes | Author | Approved By |
|---------|------|---------|--------|-------------|
| 1.0 | | Initial release | | |
| 1.1 | | | | |

---

## 11. Governance and Compliance

### 11.1 Approvals

| Review Type | Reviewer | Date | Status |
|-------------|----------|------|--------|
| Technical review | | | ☐ Approved |
| Ethics review | | | ☐ Approved |
| Security review | | | ☐ Approved |
| Legal review | | | ☐ Approved |
| Business review | | | ☐ Approved |

### 11.2 Compliance

| Requirement | Applicable | Status | Evidence |
|-------------|------------|--------|----------|
| GDPR Art. 22 (automated decisions) | ☐ | ☐ Compliant | |
| Explainability requirements | ☐ | ☐ Compliant | |
| Bias testing requirements | ☐ | ☐ Compliant | |
| Audit trail requirements | ☐ | ☐ Compliant | |

### 11.3 Contact Information

| Role | Name | Contact |
|------|------|---------|
| Model Owner | | |
| Technical Lead | | |
| Ethics Contact | | |
| Escalation | | |

---

## 12. References and Links

| Resource | Link |
|----------|------|
| Model repository | |
| Training code | |
| Training data documentation | |
| Monitoring dashboard | |
| API documentation | |
| Related model cards | |

---

## Appendix: Quick Reference

### Model Summary

```
Model: [Name] v[Version]
Type: [Classification/Regression/etc.]
Primary Metric: [Metric] = [Value]
Key Limitation: [Most important limitation]
Status: [Active/Deprecated/Under Review]
Owner: [Name]
Last Updated: [Date]
```

### Decision Thresholds

| Use Case | Threshold | Rationale |
|----------|-----------|-----------|
| Default | [X] | Balanced precision/recall |
| High precision | [X] | Minimize false positives |
| High recall | [X] | Minimize false negatives |
