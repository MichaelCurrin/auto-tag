# ℹ️ About


**Table of contents:**

- [🚀 Purpose](#-purpose)
- [🎛️ What it does](#️-what-it-does)
- [🎚️ Versioning sequence](#️-versioning-sequence)
- [💽 Pre-requisites](#-pre-requisites)
- [📚 Resources](#-resources)


## 🚀 Purpose

AutoTag can be used whenever you want to create a new [tag](https://github.com/MichaelCurrin/learn-to-code/blob/master/en/topics/version_control/Git/tags.md) in your `git` project.

Specify a level as major, minor or bug level as per the [semvar sequence](#-versioning-sequence) standard and AutoTag will increment the tag appropriately in your repo.

AutoTag streamlines your process as you no longer have to tasks that are error-prone or easy to forget.


## 🎛️ What it does

1. Fetch all tags on the remote.
2. Read your latest _git_ tag
3. Figure out and show label for the next tag.
4. Actually create the tag, unless preview flag is used.


**Notes:**

- The tag will be of type _annotated_.
- AutoTag was built to be run locally by hand, but you can add it as part of your release flow.


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


## 💽 Pre-requisites

Note this was written for Unix-like systems (Linux and macOS).

So you just need [Bash](https://github.com/MichaelCurrin/learn-to-code/blob/master/Shell/Bash/README.md) shell installed.

The application is a single script. There are no external dependencies.


## 📚 Resources

Inspiration for this project comes from the following:

- [Automatic tagging of releases](https://stackoverflow.com/questions/3760086/automatic-tagging-of-releases)
- [Gist](https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351) by `dtiemann83`.
