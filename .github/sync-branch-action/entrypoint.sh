#!/bin/sh

curl \
  -X PATCH \
  -H "Authorization: token $GITHUB_TOKEN" \
  -d "{\"sha\": \"$GITHUB_SHA\"}" \
  "https://api.github.com/repos/$GITHUB_REPOSITORY/git/refs/heads/$TARGET_BRANCH"
