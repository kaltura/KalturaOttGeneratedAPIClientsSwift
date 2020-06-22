#!/bin/bash

set -u

cat << EOF > ~/.netrc
machine trunk.cocoapods.org
  login $PODS_USER
  password $PODS_PASS
EOF

pod spec lint
