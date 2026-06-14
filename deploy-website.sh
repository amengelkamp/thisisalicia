#!/usr/bin/env bash
set -euo pipefail

REMOTE="alicia@thisisalicia.de"
REMOTE_PATH="/srv/www/alicia"
LOCAL_PATH="$(cd "$(dirname "$0")" && pwd)/"
YNAB_FEATURE_PATH="$(cd "$(dirname "$0")/../ynabAmazonFeature" && pwd)/"

rsync -avz --delete --chmod=D755,F644 \
  --exclude='.git' \
  --exclude='drafts/' \
  --exclude='*.md' \
  --exclude='.gitignore' \
  --exclude='deploy-website.sh' \
  "$LOCAL_PATH" "$REMOTE:$REMOTE_PATH"

rsync -avz --delete --chmod=D755,F644 \
  --exclude='.git' \
  --exclude='*.md' \
  --exclude='.gitignore' \
  "$YNAB_FEATURE_PATH" "$REMOTE:$REMOTE_PATH/ynabAmazonFeature"

echo "Deployed to $REMOTE:$REMOTE_PATH"
