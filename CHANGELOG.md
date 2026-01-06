# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-06

### Added

- **Table of Contents** in README with anchor navigation
- **Enterprise-grade CI** with strict markdown linting (no warnings ignored)

### Changed

- **markdownlint config** enhanced with stricter rules:
  - Consistent heading spacing (MD022)
  - Ordered list numbering (MD029)
  - Standardized horizontal rules (MD035)
  - Consistent code fence style (MD048)
- **CI workflow** now fails on lint errors (removed `|| true` fallback)

### Fixed

- Git authorship properly set for all commits

## [0.1.0] - 2025-01-06

### Added

- **Core Methodology** (16 templates)
  - Discovery phase: stakeholder interviews, data audit, AI readiness scorecard, bottleneck identification
  - Definition phase: pilot scope, success criteria, kill criteria, baseline measurement
  - Execution phase: weekly reviews, metrics tracking, stakeholder updates, risk register
  - Evaluation phase: results analysis, go/no-go decision matrix, scale planning, lessons learned

- **Governance Tools** (3 templates)
  - AI ethics checklist for pre-deployment review
  - Model card template for ML documentation
  - Bias testing protocol for fairness assessment

- **Business Case Tools** (2 templates)
  - ROI calculator with NPV, payback period, sensitivity analysis
  - Vendor evaluation matrix for build vs. buy decisions

- **Worked Examples** (3 complete pilots)
  - Manufacturing OEE pilot (GO decision)
  - Insurance claims automation (CONDITIONAL GO decision)
  - Aquaculture monitoring (GO decision)

- **Documentation**
  - Comprehensive README with quickstart guide
  - Contributing guidelines
  - Security policy
  - Code of conduct

- **CI/CD**
  - Markdown linting
  - Link validation
  - Makefile for common operations

### Notes

- Initial release focusing on documentation completeness
- All templates include "See Also" cross-references for navigation
- 186 internal cross-reference links for interconnected workflow
