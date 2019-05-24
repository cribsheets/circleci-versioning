#!/usr/bin/env bash

# yanks the package version out of the package.json file, trims all whitespace.
# yanked unceremoniously from https://gist.github.com/DarrenN/8c6a5b969481725a4413

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')

echo $PACKAGE_VERSION
