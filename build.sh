#!/bin/bash

# Rebuild the dist folder
rm -rf dist/
gulp

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[", ]//g')

echo "Package version: $PACKAGE_VERSION"
packageName="easion-$PACKAGE_VERSION"

rm -rf package
mkdir package

zip -rq package/$packageName.zip ./dist/*
echo "Operation completed, you can close this window"
sleep 300
