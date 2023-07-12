#!/bin/sh -l

git config --global --add safe.directory "${GITHUB_WORKSPACE:=.}"

semantic-release
