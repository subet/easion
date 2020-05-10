
#!/bin/bash

echo "Building Easion"
. build.sh

echo "Pushing to test"

rsync -at --delete dist/ mdikici@gmail.com:~/public_html/subet/test.mudimedia.com/easion/demo
rsync -at package/ mdikici@gmail.com:~/public_html/subet/test.mudimedia.com/easion/package
