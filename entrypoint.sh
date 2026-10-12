#!/bin/sh
set -e

if [ ! -f /app/mirror/playgta5.com/index.html ]; then
  apt-get update && apt-get install -y --no-install-recommends curl
  python3 download_game.py
fi

exec python3 serve_local.py --host 0.0.0.0 --port 8000
