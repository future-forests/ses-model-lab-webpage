#!/bin/bash
echo "Enter commit message:"
read msg
git add .
git commit -m "$msg"
git push --set-upstream origin pages
git push origin master