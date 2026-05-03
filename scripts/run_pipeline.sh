#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if ! python3 - <<'PY'
import importlib.util
import sys
required = ["numpy", "pandas", "sklearn", "fastapi", "uvicorn"]
missing = [pkg for pkg in required if importlib.util.find_spec(pkg) is None]
if missing:
    print("Missing Python package(s): " + ", ".join(missing))
    print("Install with: python3 -m pip install -r requirements.txt")
    sys.exit(1)
PY
then
  exit 1
fi

echo "Recommender scaffold is dependency-ready."
echo "Next step: add src/ modules and wire training/inference commands."
