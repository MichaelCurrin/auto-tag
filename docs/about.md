# ℹ️ About


**Table of contents:**

- [🚀 Purpose](#-purpose)
- [🎛️ What it does](#️-what-it-does)
- [🎚️ Versioning sequence](#️-versioning-sequence)
- [💽 Pre-requisites](#-pre-requisites)
- [📚 Resources](#-resources)
- [🤔 Alternatives](#-alternatives)


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

A "bug" and "patch" release are the same thing.

If you are on version `v0.1.2` and want to increment the _minor_ version, run:

```sh
$ autotag m
```

Then the tool will increment the minor value by one and set the bug version to zero.

So your new tag will be `v0.2.0`.

Note this project is only intended for tag versions with a `v` prefix.


## 💽 Pre-requisites

Note this was written for Unix-like systems (Linux and macOS).

So you just need [Bash](https://github.com/MichaelCurrin/learn-to-code/blob/master/Shell/Bash/README.md) shell installed.

The application is a single script. There are no external dependencies.


## 📚 Resources

Inspiration for this project comes from the following:

- [Automatic tagging of releases](https://stackoverflow.com/questions/3760086/automatic-tagging-of-releases)
- A [gist](https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351) by `dtiemann83`.


## 🤔 Alternatives
> Comparing AutoTag and the `npm version` command

If you're already using Node.js + NPM and you have a `package.json` file in your project, you could make use of the builtin [npm version][] command instead of AutoTag.

For example:

```sh
$ npm version minor
```

Which is similar to running:

```sh
$ autotag m
```

### Aliases

I like to configure aliases to make using `npm version` easier.

```sh
alias nv='npm version minor'
alias nv-M='npm version major'
alias nv-b='npm version patch'
```

### Reasons to use npm version

- The NPM version command is built-in for NPM.
- It is widely known and used by dev community.
- It handles the same functionality as AutoTag in incrementing to major, minor or bug fix.
- It integrates with other parts of NPM running your `preversion`, `version` and `postversion` commands in your `package.json` file.
- Plus it _also_ increments the version in your `package.json`. This change requires a commit, which `npm version` does for you, using `0.2.0` for example as the commit message as `v0.2.0` as the tag.
- It works with NPM script commands like `pre-version`.

### Reason to use AutoTag

AutoTag is great for repos in any programming language, especially those which don't use NPM.

AutoTag makes sure to _fetch_ remote tags first, which `npm version` does not. Which means `npm version` might end up creating a tag locally which already exists on the remote - created as a tag on GitHub directly. Unless one also remembers to edit `package.json` on GitHub before making the tag.

However, this risk can be avoided for NPM projects if you make sure to use a `"version"` field in your `package.json` file and avoid tagging in GitHub directly. This approach will work as if you have the latest `master` branch, as the value of the `"version"` field will reflect the latest tag on the remote master, even if you don't have the tag locally.

[npm version]: https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/javascript/npm/commands/version.html
