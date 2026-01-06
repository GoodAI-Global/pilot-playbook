# Contributing to The AI Pilot Playbook

Thank you for your interest in improving this playbook. Contributions from practitioners who have run real pilots are especially valuable.

## Quick Start for Contributors

```bash
# Fork and clone
git clone https://github.com/YOUR-USERNAME/pilot-playbook.git
cd pilot-playbook

# Create a branch
git checkout -b improve-kill-criteria

# Make changes, then test
make test

# Commit and push
git add .
git commit -m "Improve kill criteria examples"
git push origin improve-kill-criteria

# Open a Pull Request on GitHub
```

## Development Setup

```bash
# Install dependencies (optional, for linting)
make setup

# Run linter
make lint

# Run tests
make test

# Clean up
make clean
```

## How to Contribute

### Reporting Issues

If you find errors, unclear content, or have suggestions:

1. Check existing issues to avoid duplicates
2. Open a new issue with a clear title
3. Use the appropriate label: `bug`, `enhancement`, `question`, `documentation`
4. Include the file path and line numbers if applicable

### Submitting Changes

1. Fork the repository
2. Create a feature branch (`git checkout -b improve-kill-criteria`)
3. Make your changes
4. Run `make test` to validate links
5. Commit with a clear message following [Conventional Commits](https://www.conventionalcommits.org/)
6. Open a Pull Request

### Commit Message Format

```
<type>: <description>

[optional body]

[optional footer]
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

Examples:
- `feat: add healthcare industry example`
- `fix: correct broken link in scope template`
- `docs: clarify MVS threshold calculation`

## What We're Looking For

### High-Value Contributions

- Real-world examples from pilots you've run (anonymized)
- Improvements to templates based on practical use
- Additional kill criteria examples with lessons learned
- Industry-specific adaptations
- Translations

### Guidelines

- Keep templates practical and immediately usable
- Avoid theoretical content without actionable guidance
- Maintain consistent formatting with existing files
- Include rationale for significant changes
- Add "See Also" cross-references when creating new templates

## Style Guide

### Markdown

- Use ATX-style headers (`#`, `##`, `###`)
- Use tables for structured information
- Use fenced code blocks with language identifiers
- Keep line lengths reasonable (no hard limit, but aim for readability)

### Content

- Use clear, direct language
- Prefer active voice
- Include "why" not just "what"
- Keep quotes and callouts impactful
- Test all internal links before submitting

### File Naming

- Use lowercase with hyphens: `kill-criteria-examples.md`
- Be descriptive: prefer `stakeholder-interview-guide.md` over `interviews.md`

## Pull Request Process

1. Ensure `make test` passes
2. Update CHANGELOG.md with your changes under `[Unreleased]`
3. Request review from @rogermsc
4. Address review feedback
5. Squash commits if requested

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md).

## Questions?

Open an issue with the `question` label.
