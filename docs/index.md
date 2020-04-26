# AutoTag docs 🤖 🏷️
> Take the hassle out of incrementing a tag version with Auto-Tag shell tool

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-blue.svg)](https://www.gnu.org/software/bash/)
[![Repo stars](https://img.shields.io/github/stars/MichaelCurrin/auto-tag?style=social)](https://github.com/MichaelCurrin/auto-tag)
[![Repo forks](https://img.shields.io/github/forks/MichaelCurrin/auto-tag?style=social)](https://github.com/MichaelCurrin/auto-tag)
[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/auto-tag.svg)](https://GitHub.com/MichaelCurrin/auto-tag/tags/)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/MichaelCurrin/auto-tag/blob/master/LICENSE)

Uses the semantic versioning standard.


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

Push the tag.

```sh
git push v0.1.1
```

## Menu

- [ℹ️ About](about)
- [📦 Installation](installation)
- [⛵ Usage](usage)
- [🚧 Development](development)
