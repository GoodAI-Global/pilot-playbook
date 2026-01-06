#!/bin/bash
# test-links.sh - Validate internal markdown links
# This is a deterministic test that checks all internal links resolve correctly

set -e

echo "=== Link Validation Test ==="
echo ""

cd "$(dirname "$0")/.."

# Track results
broken=0
checked=0

# Find all markdown files
for file in $(find . -name "*.md" -not -path "./.git/*" -not -path "./node_modules/*"); do
  dir=$(dirname "$file")

  # Extract markdown links [text](path.md)
  links=$(grep -oP '\[.*?\]\(\K[^)]+' "$file" 2>/dev/null | grep -v '^http' | grep -v '^#' | grep '\.md$' || true)

  for link in $links; do
    checked=$((checked + 1))
    target="$dir/$link"

    if [ ! -f "$target" ]; then
      echo "BROKEN: $file -> $link"
      broken=$((broken + 1))
    fi
  done
done

echo ""
echo "Checked $checked internal links"

if [ $broken -eq 0 ]; then
  echo "✓ All links valid"
  exit 0
else
  echo "✗ Found $broken broken links"
  exit 1
fi
