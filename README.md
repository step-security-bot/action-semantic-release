# action-semantic-release
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