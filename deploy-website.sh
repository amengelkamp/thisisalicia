#!/usr/bin/env bash
set -euo pipefail

REMOTE="alicia@thisisalicia.de"
REMOTE_PATH="/srv/www/alicia"
LOCAL_PATH="$(cd "$(dirname "$0")" && pwd)/"

rsync -avz --delete --chmod=D755,F644 \
  --exclude='.git' \
  --exclude='drafts/' \
  --exclude='*.md' \
  --exclude='.gitignore' \
  --exclude='deploy-website.sh' \
  "$LOCAL_PATH" "$REMOTE:$REMOTE_PATH"

echo "Deployed to $REMOTE:$REMOTE_PATH"
