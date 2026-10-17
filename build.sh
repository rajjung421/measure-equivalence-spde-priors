#!/usr/bin/env bash
# Build paper.pdf with three pdflatex passes; auxiliary files go to build/.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
for _ in 1 2 3; do
    pdflatex -interaction=nonstopmode -halt-on-error -output-directory=build paper.tex > /dev/null
done
cp build/paper.pdf paper.pdf
grep -E "Warning|Overfull" build/paper.log || true
echo "built paper.pdf"
