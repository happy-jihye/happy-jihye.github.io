#! /bin/bash

git add .
git commit -m "$*"

echo "git commit -m $*"

git push
