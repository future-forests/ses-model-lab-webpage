#!/bin/sh
set -e

REPO="/Users/martawenta/Desktop/SES_Model_Lab_landing_page"
MSG="${1:-Update $(date +%Y-%m-%d)}"

cd "$REPO"

# Commit and push main
git switch main
git add -A
if ! git diff --cached --quiet; then
    git commit -m "$MSG"
    git push origin main
    echo "Pushed to main"
else
    echo "No changes on main"
fi

# Sync pages branch → deploys the site
git switch pages
git merge main --ff-only
git push origin pages
git switch main

echo "Live: https://fufo-ses-model-lab.codeberg.page/SES_Model_Lab/"