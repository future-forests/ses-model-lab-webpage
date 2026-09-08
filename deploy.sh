#!/bin/sh
# Commit and push the SES Model Lab site.
#
#   ./deploy.sh                  commit everything as "Update <today>", asks before pushing
#   ./deploy.sh "my message"     same, with your own commit message
#   ./deploy.sh -y "my message"  no confirmation prompt
#
# GitHub Pages serves main at the repository root, so a push publishes the site.

set -e

cd "$(dirname "$0")"

YES=0
if [ "$1" = "-y" ]; then
    YES=1
    shift
fi
MSG="${1:-Update $(date +%Y-%m-%d)}"

BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$BRANCH" != "main" ]; then
    echo "You are on branch '$BRANCH', not 'main'."
    echo "Switch with:  git switch main"
    exit 1
fi

if git diff --quiet && git diff --cached --quiet &&
   [ -z "$(git ls-files --others --exclude-standard)" ]; then
    echo "Nothing to commit — the working tree is clean."
    exit 0
fi

echo "Changes:"
git status --short
echo
echo "Commit message: $MSG"
echo

if [ "$YES" -eq 0 ]; then
    printf "Commit and push to GitHub? [y/N] "
    read -r reply
    case "$reply" in
        [yY]*) ;;
        *) echo "Aborted — nothing committed."; exit 1 ;;
    esac
fi

git add -A
git commit -m "$MSG"
git push origin main

echo
echo "Pushed. Live in a minute or so at:"
echo "  https://future-forests.github.io/ses_model_lab_webpage/"
