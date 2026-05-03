#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

echo "Recommender system scaffold is initialized."
echo "Implement ingestion/training modules under src/ and update this runner."
