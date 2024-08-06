## Usage

Create a directory `~/.config/vivid/themes` if it does not already exist.

Copy `cyberdream.yml` and/or `cyberdream-light.yml` to the directory.

Export the environment variable `LS_COLORS` in your shell config f.e. .zshrc or .bashrc, ...

```sh
export LS_COLORS="$(vivid generate cyberdream)"
```

See also: [vivid](https://github.com/sharkdp/vivid)
