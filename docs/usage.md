# 🏋️‍♂️ Usage

## Fetching

As an added precaution, the application will always fetch the latest tags on the remote, to avoid accidentally creating a local tag that already exists on a remote.

## Command-line usage

```
USAGE: ./autotag.sh INCREMENT [-p] [-h]

Increment git tag using given level.

Positional arguments:
    INCREMENT   : One of M|m|b for major, minor or bug.

Flags:
    -h --help   : Show help and exit.
    -p --preview: Preview new tag version but do not actually tag it.
```

Note this works best on the master branch, for reading from existing tags on master and actually creating the tag.


## Example usage

Increment major version, minor version, or bug version respectively as follows:

```bash
$ ./autotag.sh M
$ ./autotag.sh m
$ ./autotag.sh b
```

You'll see output like this:

```sh
$ ./autotag.sh b
```
```
Auto tagging...
Last tag: v0.1.0
New tag: v0.1.1
Creating annotated tag...
```

Use the optional preview flag:

```sh
$ ./autotag.sh m -p
```
```
Auto tagging...
Last tag: v0.1.1
New tag: v0.2.0
Skipping tag creation
```


## Delete tag

If you realize you don't want that new tag anymore, delete it.

```sh
git tag -d TAG_NUMBER
```


## Push tag

If you are happy with the tag, you can push it. This will push all local tags.

```sh
$ git push --tags
```
