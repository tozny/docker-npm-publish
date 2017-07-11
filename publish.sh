#! /bin/sh

# setup for npm credentials
echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > ~/.npmrc

if [ "$TAG_NEXT" == "true" ]; then
  # if we want to publish a testing version
  npm build
  npm publish --tag next
else
  # production publish, uses version in package.json
  npm build
  npm publish
fi
