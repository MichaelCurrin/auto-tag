# AutoTag docs homepage 🤖 🏷️
> Take the hassle out of incrementing a tag version with AutoTag shell tool

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-blue?logo=gnu-bash)](https://www.gnu.org/software/bash/)
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

Push the commit and all tags.

```sh
$ git push && git push --tags
```

Or push just one tag:

```sh
$ git push v0.1.1
```


## Menu

- [ℹ️ About](about)
- [📦 Installation](installation)
- [⛵ Usage](usage)
- [🚧 Development](development)
