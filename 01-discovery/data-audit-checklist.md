# Data Audit Checklist

> "AI is only as good as the data it learns from. Audit early, or fail later."

## Purpose

Before committing to a pilot, you must understand:
- What data exists
- How good that data is
- What's missing
- What it will take to make the data usable

This checklist provides a structured approach to data due diligence.

---

## Data Audit Overview

### Audit Phases

| Phase | Focus | Duration | Outcome |
|-------|-------|----------|---------|
| 1. Inventory | What data exists? | 1-2 days | Data catalog |
| 2. Access | Can we get to it? | 1-3 days | Access confirmed |
| 3. Quality | How good is it? | 3-5 days | Quality assessment |
| 4. Fitness | Can it solve our problem? | 2-3 days | Fitness determination |
| 5. Gaps | What's missing? | 1-2 days | Gap remediation plan |

**Total: 8-15 business days** (critical path to pilot start)

---

## Phase 1: Data Inventory

### 1.1 Identify Data Sources

For each potential data source:

| Question | Answer |
|----------|--------|
| **Source Name** | |
| **System of Record** | |
| **Data Owner (Business)** | |
| **Data Steward (Technical)** | |
| **Description** | |
| **Update Frequency** | Real-time / Daily / Weekly / Monthly / Ad hoc |
| **Volume** | Records per day/month |
| **Retention Period** | |
| **Primary Key** | |
| **How is it accessed?** | Direct DB / API / Export / ETL |

### 1.2 Data Source Catalog Template

```markdown
## Data Source: [Name]

### Overview
| Attribute | Value |
|-----------|-------|
| System | |
| Database/Table | |
| Owner | |
| Access Method | |
| Refresh Rate | |

### Key Fields
| Field Name | Data Type | Description | Example Value |
|------------|-----------|-------------|---------------|
| | | | |

### Relationships
- Links to: [Other data sources]
- Foreign keys: [Field mappings]

### Known Issues
- [Issue 1]
- [Issue 2]

### Relevance to Pilot
- [Why this data matters]
- [What questions it answers]
```

### 1.3 Inventory Checklist

- [ ] All potentially relevant data sources identified
- [ ] Business owner identified for each source
- [ ] Technical steward identified for each source
- [ ] Data catalog documented
- [ ] Preliminary relevance assessment completed

---

## Phase 2: Data Access

### 2.1 Access Requirements

For each data source:

| Question | Answer |
|----------|--------|
| **Who can grant access?** | |
| **What approval process exists?** | |
| **Access request submitted on** | |
| **Expected approval date** | |
| **Access type needed** | Read-only / Read-write |
| **Environment needed** | Production / Replica / Export |
| **Credentials/permissions needed** | |
| **Any restrictions?** | PII masking, time-limited, etc. |

### 2.2 Access Verification

| Check | Status | Notes |
|-------|--------|-------|
| Connection successful | ⬜ | |
| Query permissions working | ⬜ | |
| Expected tables/fields visible | ⬜ | |
| Volume matches expectations | ⬜ | |
| Historical data accessible | ⬜ | |
| Refresh schedule confirmed | ⬜ | |

### 2.3 Access Blockers

| Blocker | Impact | Mitigation | Owner | Due Date |
|---------|--------|------------|-------|----------|
| | | | | |

### 2.4 Access Checklist

- [ ] Access requests submitted for all sources
- [ ] Approvals received
- [ ] Connections tested
- [ ] Query permissions verified
- [ ] Historical data access confirmed
- [ ] Blockers identified and escalated

---

## Phase 3: Data Quality Assessment

### 3.1 Quality Dimensions

Assess each dimension for critical data elements:

| Dimension | Definition | Target | Measurement Method |
|-----------|------------|--------|-------------------|
| **Completeness** | Fields are not null/empty | >95% | NULL check query |
| **Accuracy** | Values match reality | >98% | Spot-check against source |
| **Consistency** | Same across systems | >99% | Cross-reference check |
| **Timeliness** | Reflects current state | <24h lag | Timestamp analysis |
| **Validity** | Values within expected range | >99% | Range/format checks |
| **Uniqueness** | No unintended duplicates | 100% | Duplicate detection |

### 3.2 Quality Assessment Queries

#### Completeness Check
```sql
SELECT
  COUNT(*) as total_records,
  SUM(CASE WHEN field_1 IS NULL THEN 1 ELSE 0 END) as field_1_null,
  SUM(CASE WHEN field_2 IS NULL THEN 1 ELSE 0 END) as field_2_null,
  -- Add more fields
  SUM(CASE WHEN field_1 IS NULL OR field_2 IS NULL THEN 1 ELSE 0 END) as any_key_null
FROM table_name
WHERE date_field >= DATEADD(month, -3, GETDATE());
```

#### Validity Check
```sql
SELECT
  COUNT(*) as total,
  SUM(CASE WHEN status NOT IN ('VALID', 'VALUES') THEN 1 ELSE 0 END) as invalid_status,
  SUM(CASE WHEN amount < 0 THEN 1 ELSE 0 END) as negative_amounts,
  SUM(CASE WHEN date_field > GETDATE() THEN 1 ELSE 0 END) as future_dates
FROM table_name;
```

#### Uniqueness Check
```sql
SELECT
  primary_key,
  COUNT(*) as occurrences
FROM table_name
GROUP BY primary_key
HAVING COUNT(*) > 1
ORDER BY occurrences DESC
LIMIT 100;
```

#### Consistency Check (Cross-System)
```sql
SELECT
  a.id,
  a.field_value as system_a_value,
  b.field_value as system_b_value
FROM system_a a
JOIN system_b b ON a.id = b.id
WHERE a.field_value != b.field_value;
```

### 3.3 Quality Score Card

| Data Source | Completeness | Accuracy | Consistency | Timeliness | Validity | Uniqueness | Overall |
|-------------|--------------|----------|-------------|------------|----------|------------|---------|
| Source 1 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| Source 2 | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |

**Rating Scale:**
- 🟢 Green: >95% meets standard
- 🟡 Yellow: 80-95% meets standard
- 🔴 Red: <80% meets standard

### 3.4 Quality Issues Log

| ID | Source | Field | Issue | Severity | Sample | Root Cause | Remediation |
|----|--------|-------|-------|----------|--------|------------|-------------|
| Q1 | | | | H/M/L | | | |
| Q2 | | | | H/M/L | | | |

### 3.5 Quality Checklist

- [ ] Completeness assessed for all critical fields
- [ ] Accuracy spot-checked (sample of 50-100 records)
- [ ] Cross-system consistency checked
- [ ] Timeliness/freshness validated
- [ ] Valid value ranges confirmed
- [ ] Duplicates identified
- [ ] Quality issues logged with severity
- [ ] Remediation plan for critical issues

---

## Phase 4: Fitness for Purpose

### 4.1 Data-to-Use Case Mapping

| Pilot Requirement | Data Needed | Source | Available? | Quality OK? | Gap? |
|-------------------|-------------|--------|------------|-------------|------|
| [Requirement 1] | [Fields] | | Y/N | Y/N | |
| [Requirement 2] | [Fields] | | Y/N | Y/N | |

### 4.2 Label/Ground Truth Assessment

For ML use cases:

| Question | Answer |
|----------|--------|
| **What is the label/target?** | |
| **Where does ground truth come from?** | |
| **Who created the labels?** | |
| **How reliable are the labels?** | |
| **Label distribution (class balance)** | |
| **Label consistency (inter-rater)** | |
| **Label coverage (% of data labeled)** | |

**Label Quality Concerns:**
- [ ] Labels may be incorrect
- [ ] Labels may be inconsistent
- [ ] Labels may be biased
- [ ] Labels may be missing
- [ ] Label definition may be ambiguous

### 4.3 Historical Data Assessment

| Question | Answer |
|----------|--------|
| **How much history is available?** | |
| **How much history is needed?** | |
| **Is history representative of current?** | |
| **Any major changes in history?** | |
| **Any gaps in historical data?** | |

### 4.4 Volume Assessment

| Question | Answer |
|----------|--------|
| **Total records available** | |
| **Records per time period** | |
| **Records per class/category** | |
| **Minimum needed for analysis** | |
| **Sufficient for statistical significance?** | |

### 4.5 Fitness Checklist

- [ ] All pilot requirements mapped to data sources
- [ ] Labels/ground truth quality assessed
- [ ] Historical depth sufficient
- [ ] Volume sufficient for analysis
- [ ] Data representative of target population
- [ ] No critical fitness gaps identified

---

## Phase 5: Gap Analysis

### 5.1 Gap Inventory

| Gap ID | Description | Impact on Pilot | Remediation Options | Effort | Priority |
|--------|-------------|-----------------|---------------------|--------|----------|
| G1 | | | | | |
| G2 | | | | | |

### 5.2 Gap Categories

| Category | Examples | Typical Remediation |
|----------|----------|---------------------|
| **Missing Data** | Field doesn't exist | Add field, use proxy, descope |
| **Quality Issues** | Incomplete, inaccurate | Cleanup project, filter, accept |
| **Access Barriers** | No permission | Escalate, use export, descope |
| **Volume Shortfall** | Not enough samples | Wait, combine sources, descope |
| **Label Problems** | No ground truth | Create labels, use heuristics |

### 5.3 Gap Resolution Decision

For each gap, decide:

```
Is the gap solvable before pilot start?
├─ Yes, < 1 week effort → Remediate
├─ Yes, 1-4 weeks effort → Remediate if critical, else accept/descope
├─ Yes, > 4 weeks effort → Descope or delay pilot
└─ No → Descope or cancel pilot
```

### 5.4 Gap Resolution Plan

| Gap ID | Resolution | Owner | Start Date | End Date | Status |
|--------|------------|-------|------------|----------|--------|
| G1 | | | | | ⬜ |
| G2 | | | | | ⬜ |

### 5.5 Gap Checklist

- [ ] All gaps identified and documented
- [ ] Impact assessed for each gap
- [ ] Remediation options identified
- [ ] Go/no-go decision made for each gap
- [ ] Resolution plan with owners and dates
- [ ] Residual risks documented

---

## Data Audit Summary Report

```markdown
# Data Audit Report: [Pilot Name]

**Audit Date:** [YYYY-MM-DD]
**Auditor:** [Name]
**Version:** [X.X]

## Executive Summary

**Overall Data Readiness:** 🟢 Ready / 🟡 Ready with Gaps / 🔴 Not Ready

[1-2 paragraph summary of findings]

## Data Sources Assessed

| Source | Relevance | Access | Quality | Fitness | Overall |
|--------|-----------|--------|---------|---------|---------|
| | | | | | |

## Critical Findings

### Strengths
1. [Strength 1]
2. [Strength 2]

### Concerns
1. [Concern 1] - [Mitigation]
2. [Concern 2] - [Mitigation]

### Blockers
1. [Blocker 1] - [Resolution path]

## Gaps Requiring Remediation

| Gap | Impact | Resolution | Owner | Timeline |
|-----|--------|------------|-------|----------|
| | | | | |

## Recommendations

1. [Recommendation 1]
2. [Recommendation 2]

## Risk Summary

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| | | | |

## Approval

| Role | Name | Decision | Date |
|------|------|----------|------|
| Data Owner | | Proceed / Remediate / Stop | |
| Pilot Lead | | Proceed / Remediate / Stop | |
```

---

## Quick Reference: Red Flags

Stop and escalate if you find:

| Red Flag | Why It Matters |
|----------|----------------|
| >20% missing values in critical fields | Model will learn noise |
| No clear ground truth / labels | Cannot train or evaluate |
| Data >6 months old with no refresh | May not represent current state |
| Multiple conflicting sources for same data | Which is correct? |
| Unable to get production access | Pilot results won't transfer |
| <500 samples per class | Insufficient for ML |
| Obvious data entry errors in spot check | Systemic quality problems |
| No clear data owner | Cannot resolve issues |
| Legal/compliance restrictions unclear | Risk of violation |
