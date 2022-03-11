are-scripts-enabled
===================

NodeJS package for testing if [install scripts](https://docs.npmjs.com/cli/v6/using-npm/scripts#npm-install) are disabled.  This includes:

* `preinstall`
* `intall`
* `postinstall`


# Usage

The basic usage is to add this package as a dependency and see if the installation fails.

**Installation failure implies that install scripts are running.**

## `yarn`

	yarn add are-scripts-enabled