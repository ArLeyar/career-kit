#!/bin/bash
# Build CV variants
# Usage:
#   ./build.sh              # Build all (default + variants)
#   ./build.sh hibachi      # Build specific variant
#   ./build.sh --default    # Build default only

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUT_DIR="$SCRIPT_DIR/output"
mkdir -p "$OUTPUT_DIR"

build_default() {
  typst compile "$SCRIPT_DIR/cv.typ" "$OUTPUT_DIR/resume.pdf"
  echo "✓ resume.pdf"
}

build_variant() {
  local name="$1"
  local src="$SCRIPT_DIR/variants/${name}.typ"
  if [ ! -f "$src" ]; then
    echo "✗ Variant not found: $name" >&2
    return 1
  fi
  typst compile --root "$SCRIPT_DIR" "$src" "$OUTPUT_DIR/resume-${name}.pdf"
  echo "✓ resume-${name}.pdf"
}

if [ "$1" = "--default" ]; then
  build_default
elif [ -n "$1" ]; then
  build_variant "$1"
else
  build_default
  for variant in "$SCRIPT_DIR/variants/"*.typ; do
    [ -f "$variant" ] || continue
    name=$(basename "$variant" .typ)
    build_variant "$name"
  done
fi

echo "Done. Output: $OUTPUT_DIR/"
