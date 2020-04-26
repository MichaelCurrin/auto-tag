# 📦 Installation


## Download

Choose a directory which is in your `PATH` variable.

For example:

- `/usr/local/bin` (standard)
- `~/bin` (requires adding `$HOME/bin` to `PATH`).

Navigate there.

Download the AutoTag script to that directory. For example:

```sh
curl -O 'https://raw.githubusercontent.com/MichaelCurrin/auto-tag/master/autotag'
```

To get specific release, replace `master` with a valid [tag](https://github.com/MichaelCurrin/auto-tag/tags) version.


## Change permissions

Make it executable.

```sh
# Your user.
chmod +x autotag

# Or you user and other users in your group.
chmod ug+x autotag
```

## Test

Navigate to another directory.

Test the command can be found.

```sh
autotag --help
```

## Alias

Optionally set an alias in your shell RC file.

```sh
alias at=autotag
```

If this conflicts with the `at` command on Linux, choose something else.


## Update

To update to script, repeat the [Download](#download) and [Change permissions](#change-permissions) steps.
