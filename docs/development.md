# 👷 Development

**Table of contents:**

- [Requirements](#requirements)
- [Set up](#set-up)
- [Run](#run)
    - [Direct](#direct)
    - [Using a bin directory](#using-a-bin-directory)


## Requirements

- [Bash](https://www.gnu.org/software/bash/)


## Set up

Clone the repo.

```sh
$ git clone git@github.com:MichaelCurrin/auto-tag.git
$ cd auto-tag
```


## Run

Make any changes, then run the script.

### Direct

Test the changes on the repo itself.

```sh
$ cd auto-tag/autotag
$ ./autotag --help
```

Or on another repo.

```sh
$ cd ~/repos/my-project
$ ~/bin/autotag M --preview
```

### Using a bin directory

Optionally add the script to a bin directory that is in your `PATH`.

Example:

```sh
mkdir -p ~/bin
cd ~/bin
ln -s ~/repos/auto-tag/autotag
```

Now you can run anywhere.

```sh
$ cd ~/repos/my-project
$ autotag M --preview
```
