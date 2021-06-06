# ⛵ Usage


## Note on fetching

As an added precaution, the tool will always fetch the latest tags on the remote _before_ creating a tag. This is done to avoid accidentally creating a local tag that already exists on the remote but pointing to different commits.


## Command-line usage

```
USAGE: autotag LEVEL [-p] [-h]

Increment git tag using given increment level.

Positional arguments:
    LEVEL       : 'M' for major, 'm' for minor or 'b' for bug.

Flags:
    -h --help   : Show help and exit.
    -p --preview: Do a dry run to show the new tag label only, without creating it.
```

As with tagging the normal way, it is recommended to be on the `master` branch before creating a tag, otherwise the tag may not be meaningful in a sequence (especially if the feature branch is behind `master`).


## Examples

### Create tags

Increment major version, minor version, or bug version respectively as follows:

```sh
$ autotag M
```
```sh
$ autotag m
```
```sh
$ autotag b
```

Output will be like this:

```sh
$ ./autotag b
```
```
Auto tagging...
Last tag: v0.1.0
New tag: v0.1.1
Creating annotated tag...
```

### Preview

Use the preview flag:

```sh
$ autotag m -p
```
```
Auto tagging...
Last tag: v0.1.1
New tag: v0.2.0
Skipping tag creation
```

If there are no tags yet, then `v0.0.0` will be implied as the starting point for incrementing levels.

### Delete tag

If you realize you don't want that new tag anymore, delete it using `git`.

```sh
$ git tag -d TAG_NUMBER
```

### Push tag

If you are happy with the tag, you can push it. This will push _all_ local tags.

```sh
$ git push --tags
```

The command above will _not_ push the commits, so you should also do a standard push.

```sh
$ git push && git push --tags
```
