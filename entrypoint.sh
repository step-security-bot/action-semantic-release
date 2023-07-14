#!/bin/sh -l

github_token=$1
branches=$2
dry_run=$3

git config --global --add safe.directory "${GITHUB_WORKSPACE:=.}"

export GITHUB_TOKEN=$github_token

npx semantic-release --branches $branches --dryRun $dry_run
