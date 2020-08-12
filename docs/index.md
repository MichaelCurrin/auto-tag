# AutoTag docs homepage 🤖 🏷️
> Take the hassle out of incrementing a tag version with AutoTag shell tool

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-blue.svg)](https://www.gnu.org/software/bash/)
[![Repo stars](https://img.shields.io/github/stars/MichaelCurrin/auto-tag?style=social)](https://github.com/MichaelCurrin/auto-tag)
[![Repo forks](https://img.shields.io/github/forks/MichaelCurrin/auto-tag?style=social)](https://github.com/MichaelCurrin/auto-tag)
[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/auto-tag.svg)](https://GitHub.com/MichaelCurrin/auto-tag/tags/)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/MichaelCurrin/auto-tag/blob/master/LICENSE)

A shell tool to increment the git tag for the current repo by a given level (e.g. minor), using the semantic versioning standard.

This saves you having to check the last known tag and to exactly type the next one.

This can be installed as a user-level _bin_ executable so it can be run from anywhere.


## Example usage

Increment a repo by bug level.

```sh
$ autotag b
```
```
Auto tagging...
Last tag: v0.1.0
New tag: v0.1.1
Creating annotated tag...
```

Push all tags:

```sh
$ git push --tags
```

Or push just tag:

```sh
$ git push v0.1.1
```


## Alternative

If you're already using Node.js and you have `package.json` in your project, consider using the builtin [npm version](https://github.com/MichaelCurrin/cheatsheets/blob/master/cheatsheets/javascript/npm/version.md) command instead. It is widely used (unlike AutoTag) and already comes with NPM. It handles the same functionality as AutoTag in incrementing to major, minor or bug fix, plus it _also_ increments the version in your `package.json`.

AutoTag is great for repos that doesn't use NPM and also AutoTag makes sure to fetch remote tags first which `npm version` does not (though maybe it is less important there since the tag object will match the value in package.json file).


## Menu

- [ℹ️ About](about)
- [📦 Installation](installation)
- [⛵ Usage](usage)
- [🚧 Development](development)
