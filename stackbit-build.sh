#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 6050a41e99f4167f1fcb69bd

echo "stackbit-build.sh: finished build"
