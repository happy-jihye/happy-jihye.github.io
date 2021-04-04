#! /bin/bash

git add -p
git commit -m "$*"

echo "git commit -m $*"

git push
