#!/bin/bash
echo "Enter commit message:"
read msg
git add .
git commit -m "$msg"
git push --set-upstream origin pages
git pull --no-rebase origin main

git push origin main