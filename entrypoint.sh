#!/bin/sh -l

git config --global --add safe.directory "${GITHUB_WORKSPACE:=.}"

export GITHUB_TOKEN=$1

npx semantic-release
