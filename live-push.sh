#!/bin/bash

echo "Building Easion"
. build.sh

echo "Pushing to live"

rsync -a --delete dist/ mdikici@gmail.com:~/public_html/subet/easion/demo
rsync -a package/ mdikici@gmail.com:~/public_html/subet/easion/package
