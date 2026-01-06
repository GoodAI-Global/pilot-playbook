# Contributing to the Pilot Playbook

We welcome contributions that improve this methodology.

## How to Contribute

### Suggesting Improvements

1. Open an issue describing your suggestion
2. Reference specific sections that could be improved
3. If possible, include examples from your experience

### Adding Examples

We especially welcome industry-specific examples:

1. Fork the repository
2. Add your example in `examples/`
3. Follow the existing format (see `manufacturing-oee-pilot.md`)
4. Anonymize any client-specific information
5. Submit a pull request

### Fixing Errors

1. Fork and create a branch
2. Make your fix
3. Submit a pull request with clear description

## What We're Looking For

✅ **Yes:**

- Additional industry examples (healthcare, retail, logistics, etc.)
- Improved templates based on real-world usage
- Translations
- Clarifications based on practical experience

❌ **No:**

- Vendor-specific tooling recommendations
- Content requiring proprietary tools
- Promotional content

## Style Guide

- Clear, direct language
- Practical over theoretical
- Specific over vague
- Evidence-based claims only

## Development Setup

```bash
# Clone the repository
git clone https://github.com/GoodAI-Global/pilot-playbook.git
cd pilot-playbook

# Install dependencies (optional, for linting)
make setup

# Run linter
make lint

# Run link validation
make test
```

## Pull Request Process

1. Ensure `make test` passes
2. Update CHANGELOG.md with your changes
3. Request review
4. Address feedback

## Questions?

Open an issue or contact contact@wearegoodai.com
