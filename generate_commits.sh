#!/bin/bash

for i in {60..1}; do
  COMMIT_DATE=$(date -v -${i}d +"%Y-%m-%d 12:00:00")

  export GIT_AUTHOR_DATE="$COMMIT_DATE"
  export GIT_COMMITTER_DATE="$COMMIT_DATE"

  git commit --allow-empty -m "Commit for day $i"

  unset GIT_AUTHOR_DATE
  unset GIT_COMMITTER_DATE
done