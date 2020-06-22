#!/bin/bash

fail() {
	echo "$@" 1>&2
  exit 1
}

set -u

echo GITHUB_TOKEN LEN: ${#GITHUB_TOKEN}

PODSPEC=*.podspec
POD=$(basename $PODSPEC .podspec)

pod ipc spec $POD.podspec > spec.json

TARGET_TAG=$(jq '.source.tag' --raw-output spec.json)
VERSION=$(jq '.version' --raw-output spec.json)

RELEASE_URL="https://github.com/$GITHUB_REPOSITORY/releases/tag/$TARGET_TAG"

# Release to GitHub (creates tag + release notes)

cat << EOF > post.json
{
  "name": "v$VERSION",
  "body": "# Kaltura OTT Client Library\n\n## Cocoapods install\n\`pod '$POD', '~> $VERSION'\`",
  "tag_name": "$TARGET_TAG",
  "target_commitish": "$GITHUB_REF"
}
EOF

cat post.json

#curl https://api.github.com/repos/$GITHUB_REPOSITORY/releases -X POST -u "$GITHUB_TOKEN" -H 'Content-Type: application/json' -d@post.json

# Push to trunk
#pod trunk push --allow-warnings
pod lib lint --allow-warnings
#pod spec lint --allow-warnings
