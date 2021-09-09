# AutoTag docs homepage 🤖 🏷️
> Take the hassle out of incrementing a tag version with AutoTag shell tool

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/auto-tag.svg)](https://GitHub.com/MichaelCurrin/auto-tag/tags/)
[![Repo stars](https://img.shields.io/github/stars/MichaelCurrin/auto-tag?style=social)](https://github.com/MichaelCurrin/auto-tag)
[![Repo forks](https://img.shields.io/github/forks/MichaelCurrin/auto-tag?style=social)](https://github.com/MichaelCurrin/auto-tag)

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-blue?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

A shell tool to increment the git tag for the current repo by a given level (e.g. minor), using the semantic versioning standard.

This saves you having to check the last known tag and to exactly type the next one.

This can be installed as a user-level _bin_ executable so it can be run from anywhere.


## Sample usage

Specify the tag increment level and the tool will figure out the next tag version and create the tag.

Here we increment the git version by minor level, from `v1.1.0` to `v1.2.0`.

```sh
$ autotag m
```
```
🚛 Fetching tags...
🔍 Finding most recent tag...
👴 Last tag: v1.1.0
⭐ New tag: v1.2.0
```


## Menu

- [ℹ️ About](about)
- [📦 Installation](installation)
- [⛵ Usage](usage)
- [⚙️ Upgrade](upgrade)
- [👷 Development](development)


## View source

[![MichaelCurrin - auto-tag](https://img.shields.io/static/v1?label=MichaelCurrin&message=auto-tag&color=blue&logo=github)](https://github.com/MichaelCurrin/auto-tag)
