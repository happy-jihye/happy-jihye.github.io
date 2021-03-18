#! /bin/bash

echo "git push completely!"

git add .
git commit -m $1

echo "git commit -m $1"

git push
