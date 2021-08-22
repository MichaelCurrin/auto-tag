# 📦 Installation


## 1. Download

Choose a directory which is in your `PATH` variable.

For example:

- `/usr/local/bin` (standard)
- `~/bin` (requires adding `$HOME/bin` to `PATH`).

Navigate to that directory.

Then dwnload the AutoTag script to that directory:

### Latest

e.g.

```sh
curl -O https://raw.githubusercontent.com/MichaelCurrin/auto-tag/master/autotag
```

### Release

To get a specific release, replace `master` with a valid [tag](https://github.com/MichaelCurrin/auto-tag/tags) version for this project.

e.g.

```sh
curl -O https://raw.githubusercontent.com/MichaelCurrin/auto-tag/v1.2.0/autotag
```


## 2. Change permissions

Make it executable.

```sh
# Your user.
chmod +x autotag

# Or you user and other users in your group.
chmod ug+x autotag
```


## 3. Test

Navigate to another directory.

Test the command can be found.

```sh
autotag --help
```


## 4. Upgrade

Follow the [Upgrade](upgrade) command doc.
