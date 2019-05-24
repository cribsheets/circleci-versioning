# CircleCI Versioning Workflow

## Goals

1. Create an app with a single test, that builds a node module.
2. Manual hosting / tagging / push
3. Automate testing w/ Circle CI
4. Automate tagging w/ Circle Workflow
5. Automate release? ...somehow.

## Process Notes

We want to make a miniscule node module that actually contained
a test.  Google found
[this](https://medium.freecodecamp.org/how-to-make-a-beautiful-tiny-npm-package-and-publish-it-2881d4307f78),
which seems like it fits the bill.

Maybe not THAT minimal, because we need to run a test. So, I'll add
'jest'.

Made an echo function, made an echo test, verified that echo test failed on not
echo, AND created the .circleci/config.yaml file

now to add to CircleCI and see if things happen

