#! /bin/bash

UPDATE_DATE=`date "+%Y-%m-%d-"`

git add .
git commit -m "UPDATE_DATE ${UPDATE_DATE}"
git push
