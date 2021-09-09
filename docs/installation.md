# 📦 Installation


## 1. Download

Choose a directory which is in your `PATH` variable.

For example, in Linux and macOS:

- `/usr/local/bin` - a standard value in `PATH`.
- `~/bin` - but, remember to add `$HOME/bin` to your `PATH`.

Navigate to that directory.

Then download the AutoTag script to it, as below.

### Latest

e.g.

```sh
$ curl -O https://raw.githubusercontent.com/MichaelCurrin/auto-tag/master/autotag
```

### Target release

To get a specific release, replace `master` with a valid [tag](https://github.com/MichaelCurrin/auto-tag/tags) version for this project.

e.g.

```sh
$ curl -O https://raw.githubusercontent.com/MichaelCurrin/auto-tag/v1.2.0/autotag
```


## 2. Change permissions

Make it executable:

- For your user.
    ```sh
    $ chmod +x autotag
    ```
- Or your user _and_ other users in your user group.
    ```sh
    $ chmod ug+x autotag
    ```


## 3. Test

Navigate to another directory.

Test that the command can be found.

```sh
$ autotag --help
```


## 4. Upgrade

Follow the [Upgrade](upgrade) command doc.
