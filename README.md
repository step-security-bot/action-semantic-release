# action-semantic-release
<p align="center">
  <!-- <a href="https://github.com/outoforbitdev/action-semantic-release/discussions">
    <img alt="Join the community on GitHub Discussions" src="https://img.shields.io/badge/Join%20the%20community-on%20GitHub%20Discussions-blue">
  </a> -->
  <a href="https://github.com/outoforbitdev/action-semantic-release/actions?query=workflow%3ATest+branch%3Amaster">
    <img alt="Build states" src="https://github.com/outoforbitdev/action-semantic-release/workflows/Test/badge.svg">
  </a>
  <a href="https://github.com/outoforbitdev/action-semantic-release/actions">
    <img alt="Build states" src="https://github.com/outoforbitdev/action-semantic-release/workflows/Release/badge.svg">
  </a>
  <a href="https://securityscorecards.dev/viewer/?uri=github.com/outoforbitdev/action-semantic-release">
    <img alt="OpenSSF Scorecard" src="https://api.securityscorecards.dev/projects/github.com/outoforbitdev/action-semantic-release/badge">
  </a>
  <a href="https://github.com/outoforbitdev/action-semantic-release/releases/latest">
    <img alt="Latest release" src="https://img.shields.io/github/v/release/outoforbitdev/action-semantic-release?logo=github">
  </a>
  <a href="https://github.com/outoforbitdev/action-semantic-release/issues">
    <img alt="Open issues" src="https://img.shields.io/github/issues/outoforbitdev/action-semantic-release?logo=github">
  </a>
</p>

GitHub Action for running [semantic-release](https://semantic-release.gitbook.io/semantic-release/).

## Usage

### Inputs

* `github-token`: Required. Your Github token to allow the action to make the release and commit the updated Changelog
* `dry-run`: Optional. Whether this should be a dry run. Useful if you just want to get the potential next version.

### Outputs

* `version`: The most up-to-date version. If the action releases a new version this will be the new version. If the action does not release a version this will be the most recently released version.

### Example
```
semantic-release:
    runs-on: ubuntu-latest
    name: Semantic Release
    outputs:
      version: ${{steps.semanticrelease.outputs.version}}
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Semantic Release
        uses: outoforbitdev/action-semantic-release@v1.2.2
        id: semanticrelease
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          dry-run: true
      - name: Output version
        run: echo "Latest version is ${{ steps.semanticrelease.outputs.version}}"
```
