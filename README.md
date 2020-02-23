# Auto Tag
> Generate next git tag version and then apply it

_Made with: Bash_

A tool to take the effort out of incrementing _git_ tags.

When run, this shell tool will read your latest _git_ tag, create and show label for the new tag and then optionally create the tag. Note the tag will be _annotated_.

This project is based on the _Semantic Versioning_ standard, which you can read about on [semver.org](https://semver.org/).

See how tags are named with this standard:

```
vMAJOR.MINOR.BUG
```

## 🏋️‍♂️ Usage

### Command-line usage

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

### Example usage

```bash
$ ./autotag.sh M
$ ./autotag.sh m
$ ./autotag.sh b
$ ./autotag.sh M --preview
```

### Sample output

```
$ ./autotag.sh b
Auto tagging...
Last tag: v0.1.0
New tag: v0.1.1
Creating annotated tag...
```

```
$ ./autotag.sh m -p
Auto tagging...
Last tag: v0.1.1
New tag: v0.2.0
Skipping tag creation
```

## 📚 Resources

Inspiration for the script comes from the following:
- https://stackoverflow.com/questions/3760086/automatic-tagging-of-releases
- https://gist.github.com/dtiemann83/cfa16ade69a3ea451ad760d4118a9351
