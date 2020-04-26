# ⛵ Usage


## Fetching

As an added precaution, the application will always fetch the latest tags on the remote, to avoid accidentally creating a local tag that already exists on a remote.

## Command-line usage

```
USAGE: ./autotag LEVEL [-p] [-h]

Increment git tag using given increment level.

Positional arguments:
    LEVEL       : "M" for major, "m" for minor or "b" for bug.

Flags:
    -h --help   : Show help and exit.
    -p --preview: Preview new tag version but do not actually tag it.
```

As with tagging the normal way, it is recommended to be on the `master` branch before creating a tag, otherwise the tag may not be meaningful in a sequence (especially if the feature branch is behind `master`).


## Example usage

Increment major version, minor version, or bug version respectively as follows:

```bash
$ ./autotag M
$ ./autotag m
$ ./autotag b
```

You'll see output like this:

```sh
$ ./autotag b
```
```
Auto tagging...
Last tag: v0.1.0
New tag: v0.1.1
Creating annotated tag...
```

Use the optional preview flag:

```sh
$ ./autotag m -p
```
```
Auto tagging...
Last tag: v0.1.1
New tag: v0.2.0
Skipping tag creation
```

If there are no tags yet, then `v0.0.0` will be implied as the starting point for incrementing levels.


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

Note that this **only** pushes tags. So you'll still need to do a standard push.

```sh
$ git push
```
