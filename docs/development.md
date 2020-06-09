# 🚧 Development

**Table of contents:**

- [Setup](#setup)
- [Run](#run)
    - [Direct](#direct)
    - [Using a bin directory](#using-a-bin-directory)


## Setup

Clone the repo.

```sh
$ git clone git@github.com:MichaelCurrin/auto-tag.git
$ cd auto-tag
```


## Run

Make any changes then run the script.

### Direct

Test the changes on the repo itself.

```sh
$ cd auto-tag/autotag
$ ./autotag --help
```

Or on another repo.

```sh
$ cd <OTHER_REPO>
$ <PATH_TO>/autotag M --preview
```

### Using a bin directory

Optionally add the script to a bin directory that is in your `PATH`.

Example:

```sh
mkdir -p ~/bin
cd ~/bin
ln -s ~/repos/auto-tag/autotag
```

Run from a repo:

```sh
$ autotag M --preview
```
