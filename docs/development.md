# 🚧 Development

**Table of contents:**

- [Setup](#setup)
- [Run](#run)


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

Optionally add the script to your bin.

```sh
$ cd ~/bin
$ ln -s <PATH_TO>/auto-tag/autotag
```

```sh
$ autotag M --preview
```
