#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if command -v python3 >/dev/null 2>&1; then
  PYTHON=python3
elif command -v python >/dev/null 2>&1; then
  PYTHON=python
else
  echo "Python 3 was not found. Install Python 3.10 or newer and try again."
  exit 1
fi

if [ ! -d ".venv" ]; then
  "$PYTHON" -m venv .venv
fi

source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

URL="${DASHBOARD_URL:-http://localhost:8501}"
PORT="${DASHBOARD_PORT:-8501}"

echo "Starting the dashboard at $URL ..."
python -m streamlit run app.py --server.headless true --server.port "$PORT" &
APP_PID=$!

cleanup() {
  if kill -0 "$APP_PID" >/dev/null 2>&1; then
    kill "$APP_PID" >/dev/null 2>&1 || true
  fi
}
trap cleanup INT TERM EXIT

READY=0
for _ in $(seq 1 80); do
  if ! kill -0 "$APP_PID" >/dev/null 2>&1; then
    echo "Streamlit stopped before becoming ready. Review the messages above."
    wait "$APP_PID"
    exit $?
  fi
  if python - "$URL" <<'PY' >/dev/null 2>&1
import sys
import urllib.request
urllib.request.urlopen(sys.argv[1], timeout=1).read(1)
PY
  then
    READY=1
    break
  fi
  sleep 0.5
done

if [ "$READY" -eq 1 ]; then
  echo "Dashboard ready: $URL"
  if [ "${DASHBOARD_NO_BROWSER:-0}" != "1" ]; then
    if command -v xdg-open >/dev/null 2>&1; then
      xdg-open "$URL" >/dev/null 2>&1 || true
    elif command -v gio >/dev/null 2>&1; then
      gio open "$URL" >/dev/null 2>&1 || true
    else
      echo "No browser-opening command was found. Open $URL manually."
    fi
  else
    echo "Automatic browser opening is disabled. Open $URL manually."
  fi
else
  echo "The server is still starting. Open $URL manually in a new browser tab."
fi

echo "Keep this terminal open while using the dashboard. Press Ctrl+C to stop it."
wait "$APP_PID"
