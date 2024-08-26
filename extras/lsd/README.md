## Usage

### Approach 1

Create a directory `~/.config/lsd/themes` if it does not already exist.

Copy `cyberdream.yml` and/or `cyberdream-light.yml` to the directory.

Put the following config into the `config.yaml` under `~/.config/lsd`.

```yaml
color:
  when: auto
  theme: custom
```

Create a symlink to the theme.

```sh
# Assuming you are in ~/.config/lsd
ln -s themes/cyberdream.yml colors.yaml
```

### Approach 2

Copy the `cyberdream.yml` or `cyberdream-light.yml` directly under the `~/.config/lsd` directory
and rename it to `colors.yaml`

Set the config according to [Approach 1](#approach-1).

---

See also: [lsd - README - Theme](https://github.com/lsd-rs/lsd#theme)
