# Security Policy

## Scope

This repository contains **documentation templates only** — no executable code, APIs, or services. Security concerns are limited to:

1. **Content integrity** — Ensuring templates haven't been maliciously modified
2. **Link safety** — Ensuring no malicious external links are introduced
3. **Sensitive data** — Ensuring no credentials, PII, or confidential information is committed

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.1.x   | :white_check_mark: |
| 1.0.x   | :white_check_mark: |
| 0.1.x   | :x:                |

## Reporting a Vulnerability

If you discover a security issue:

1. **Do NOT open a public issue**
2. Email security@wearegoodai.com
3. Include:
   - Description of the issue
   - Steps to reproduce (if applicable)
   - Affected files
   - Potential impact

**Response timeline:**

- Acknowledgment: Within 48 hours
- Initial assessment: Within 7 days
- Resolution: Depends on severity

## Security Practices

This repository follows these security practices:

- **No secrets**: No API keys, tokens, or credentials in any file
- **No external dependencies**: Pure markdown documentation
- **Link validation**: CI checks all internal links
- **Signed commits**: Maintainer commits are signed (when possible)

## Out of Scope

The following are NOT security issues for this repository:

- Typos or grammatical errors
- Broken internal links (report as regular issue)
- Suggestions for template improvements
- Questions about methodology
