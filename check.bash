#!/bin/bash -eu

scriptName="$1"

echo
echo "!!!"
echo "!!! UNEXPECTED SCRIPT RUN: $scriptName"
echo "!!!"

tips_yarn() {
  echo "!!! To disable in yarn, see: https://yarnpkg.com/configuration/yarnrc/#enableScripts"
}

tips_npm() {
  vFull="$(npm --version)"
  vMinor="${vFull%.*}"
  vMajor="${vMinor%.*}"
  echo "!!! To disable in npm: "https://docs.npmjs.com/cli/v${vMajor}/using-npm/config#ignore-scripts
}

executableName="$(basename "${npm_execpath%.*}")"
case "$executableName" in 
  npm-cli) tips_npm  ;;
  yarn)    tips_yarn ;;
  *)       tips_npm && tips_yarn ;;
esac

echo "!!!"
echo

exit 1
