# ℹ️ About


**Table of contents:**

- [🚀 Purpose](#-purpose)
- [🎚️ Versioning sequence](#️-versioning-sequence)
- [🎛️ How it works](#️-how-it-works)
- [💽 Pre-requisites](#-pre-requisites)
- [📚 Resources](#-resources)


## 🚀 Purpose

- Auto-Tag can be used whenever you want to create a new [tag](https://github.com/MichaelCurrin/learn-to-code/blob/master/en/topics/version_control/Git/tags.md) in your `git` project.
- Specify a level as major, minor or bug level. 
- Auto-Tag will determine the appropriate next tag level based on the latest tag on the local and remote repos. Then it will create it for you, or just show a preview if using a dry run.
- You get to **skip** doing these tedious tasks:
    - remember to pull remote tags
    - find what the latest tag
    - do a mental calculation to figure out the next number
    - type out the tag in full without making a typo


## 🎚️ Versioning sequence

This project is based on the _Semantic Versioning_ standard, which you can read about on [semver.org](https://semver.org/).

Here is the format:

```
vMAJOR.MINOR.BUG
```

If you are on version `v0.1.2`, then run the following to increment the minor version:

```sh
$ autotag M
```

Then the application will increment the minor value and set the bug version to zero.

So your new tag will be `v0.2.0`.

Note this project is only intended for versions with `v` prefix.


## 🎛️ How it works

When run, this Auto-Tag will:

1. Fetch all tags on the remote.
2. Read your latest _git_ tag
3. Create and show label for the new tag.
4. Actually create the tag.

Note the tag will be of type _annotated_.

Auto-Tag was built to be run locally by hand, but you can add it as part of your release flow.


## 💽 Pre-requisites

Note this was written for Unix-like systems (Linux and macOS).

So you just need [Bash](https://github.com/MichaelCurrin/learn-to-code/blob/master/Shell/Bash/README.md) shell installed.

The application is a single script. There are no external dependencies.

## 📚 Resources

Inspiration for this project comes from the following:

- [Automatic tagging of releases](https://stackoverflow.com/questions/3760086/automatic-tagging-of-releases)
- [Gist](https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351) by `dtiemann83`.
