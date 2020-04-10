# Auto Tag
> Terminal tool to conveniently increment your git tag and apply it

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-blue.svg)](https://www.gnu.org/software/bash/) [![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/auto-tag.svg)](https://GitHub.com/MichaelCurrin/auto-tag/tags/) [![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](#license)


## Purpose

When creating a [git tag](https://github.com/MichaelCurrin/learn-to-code/blob/master/Version%20control/Git/tags.md) in your project and want to create a new tag, run the Auto-Tag tool. Specify a major, minor or bug level and it will determine the appropriate next tag level based on the latest tag, then it will create it for oyu.

It says you time, effort and the chance of making a mistake.

With Auto-Tag, you do **not** have to:

- know to check latest tag is,
- do a mental calculation
- type out the tag in full


## Versioning sequence

This project is based on the _Semantic Versioning_ standard, which you can read about on [semver.org](https://semver.org/).

Here is the format:

```
vMAJOR.MINOR.BUG
```

If you are on version `v0.1.2`, then run the following to increment the minor version:

```sh
autotag.sh M
```

Then the application will increment the minor value and set the bug version to zero.

So your new tag will be `v0.2.0`.

Note this project is only intended for versions with `v` prefix.


## How it works

When run, this Auto-Tag will:

1. Fetch all tags on the remote.
2. Read your latest _git_ tag
3. Create and show label for the new tag.
4. Actually create the tag.

Note the tag will be of type _annotated_.

Auto-Tag was built to be run locally by hand, but you can add it as part of your release flow.


## Pre-requisites

Note this was written for Unix-like systems (Linux and macOS).

All you need is [Bash](https://github.com/MichaelCurrin/learn-to-code/blob/master/Shell/Bash/README.md) shell.

There are no dependencies.


## Documentation

- [Usage](/docs/usage.md)


## 📚 Resources

Inspiration for this project comes from the following:

- [Automatic tagging of releases](https://stackoverflow.com/questions/3760086/automatic-tagging-of-releases)
- [Gist](https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351)


## License

[MIT](/LICENSE).
