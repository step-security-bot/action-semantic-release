#!/bin/sh -l

github_token=$1
dry_run=$2
dr_run_arg=""
if $dry_run
then dry_run_arg="--dryRun"
fi

git config --global --add safe.directory "${GITHUB_WORKSPACE:=.}"

export GITHUB_TOKEN=$github_token

npx semantic-release $dry_run_arg
