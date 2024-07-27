## Usage

Create a directory `~/.config/rio/themes` if it does not already exist.

Copy `cyberdream.json` and/or `cyberdream-light.json` to the directory.

Put the following config into the `config.toml` under `~/.config/rio`.

Fix theme

```toml
# ---
theme = "cyberdream"
# ---
```

Or, adaptive theme approach, following system theme

```toml
# ---
[adaptive-theme]
light = "cyberdream-light"
dark = "cyberdream"
# ---
```

See also: [Rio - Docs - Themes](https://raphamorim.io/rio/docs/next/themes)
