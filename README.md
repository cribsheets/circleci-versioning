# CircleCI Versioning Workflow

## Goals

1. Create a node module with a single test.
2. Automate testing w/ Circle CI
3. If testing is successful, push a tag of the package.json's "version"
   attribute

## Process Notes

We want to make a miniscule node module that actually contained
a test.  Google found
[this](https://medium.freecodecamp.org/how-to-make-a-beautiful-tiny-npm-package-and-publish-it-2881d4307f78),
which seems like it fits the bill.

We wanted a simple test, since 'jest' is reasonably simple, we'll use that. The
function it's testing is 'echo', which just returns its argument.

Setting up the release tagging automation was guided by [this
post](https://circleci.com/blog/publishing-to-github-releases-via-circleci/).

Extracting the version string is a simple bash script.

## How to Use

To get a new git tag (on GitHub as well), change the "version" attribute
in package.json. That's basically it. CircleCI picks up the change and deploys a
workflow if the tests pass.

## Files of note:

* `.circleci/config.yml` configures CI with the appropriate workflow
* `scripts/extract-version.sh` yanks the version out of the `package.json` file

