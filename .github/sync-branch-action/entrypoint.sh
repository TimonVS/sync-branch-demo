#!/bin/sh

TARGET_BRANCH=$1

curl \
  -X PATCH \
  -H "Authorization: token $GITHUB_TOKEN" \
  -d "{\"sha\": \"$GITHUB_SHA\"}" \
  "https://api.github.com/repos/$GITHUB_REPOSITORY/git/refs/heads/$TARGET_BRANCH"
