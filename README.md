# Auto Tag
> Generate next git tag version and then apply it

This tool will read your latest git tag or default to a standard one, create a label for the new tag and then either just show it or show it and apply it.

This project is based on the Semantic versioning standard which you can read on [semver.org](https://semver.org/).

```
vMAJOR.MINOR.BUG
```

## Usage

### Usage instructions

```
USAGE: ./autotag.sh INCREMENT [-p] [-h]
Positional arguments:
    INCREMENT   : One of M|m|b for major, minor or bug.

Flags:
    -h --help   : Show help and exit.
    -p --preview: Preview new tag version but do not actually tag it.
```

Note this works best on the master branch, for reading from existing tags on master and actually creating the tag.

### Example usage

```bash
$ ./autotag.sh M
$ ./autotag.sh m
$ ./autotag.sh b
$ ./autotag.sh M --preview
```

### Sample output

```
./autotag.sh b
Auto tagging...
Last tag: v0.1.0
New tag: v0.1.1
Creating annotated tag...
```

```
./autotag.sh m -p
Auto tagging...
Last tag: v0.1.1
New tag: v0.2.0
Skipping tag creation
```

## Resources

Inspiration for the script comes from the following:
- https://stackoverflow.com/questions/3760086/automatic-tagging-of-releases
- https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351
