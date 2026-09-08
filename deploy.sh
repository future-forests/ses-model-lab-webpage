#!/bin/sh
set -e

REPO="/Users/martawenta/Desktop/ses_model_lab_webpage"
MSG="${1:-Update $(date +%Y-%m-%d)}"

cd "$REPO"

git switch main
git add -A
if ! git diff --cached --quiet; then
    git commit -m "$MSG"
    git push origin main
    echo "Pushed to main"
else
    echo "No changes on main"
fi

echo "Live: https://future-forests.github.io/ses_model_lab_webpage/"
