# Makefile for AI Pilot Playbook
# Usage: make [target]

.PHONY: help setup lint test clean all

# Default target
help:
	@echo "AI Pilot Playbook - Available targets:"
	@echo ""
	@echo "  make setup    Install development dependencies"
	@echo "  make lint     Run markdown linter"
	@echo "  make test     Run all tests (link validation, structure)"
	@echo "  make clean    Remove generated files"
	@echo "  make all      Run lint and test"
	@echo ""

# Install dependencies
setup:
	@echo "Installing dependencies..."
	@command -v npm >/dev/null 2>&1 && npm install -g markdownlint-cli || echo "npm not found, skipping markdownlint"
	@echo "Setup complete."

# Run markdown linter
lint:
	@echo "Running markdown linter..."
	@command -v markdownlint >/dev/null 2>&1 && \
		markdownlint '**/*.md' --ignore node_modules --ignore .github --config .markdownlint.json || \
		echo "markdownlint not installed. Run 'make setup' first or install manually."

# Run tests
test:
	@echo "Running tests..."
	@./scripts/test-links.sh
	@echo ""
	@echo "All tests passed!"

# Clean generated files
clean:
	@echo "Cleaning generated files..."
	@rm -rf node_modules
	@rm -f .test-results
	@echo "Clean complete."

# Run all checks
all: lint test
	@echo ""
	@echo "All checks complete!"
