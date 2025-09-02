## Usage

1. Create the directory `~/.config/superfile` if it doesn't already exist.
2. Copy one of the themes from this folder to your Superfile theme directory.
   - Dark: `cyberdream.toml`
   - Light: `cyberdream-light.toml`
3. Set the theme in your Superfile config.

You can either reference a built-in theme name, or point to a custom theme file.

- Using a theme name (if copied into your theme directory and named accordingly):

```toml
# ~/.config/superfile/config.toml
theme = "cyberdream"
```

- Or create your own theme file and set the path/name accordingly:

```toml
# ~/.config/superfile/theme/cyberdream.toml
# (Copy one of the provided files here)

# ~/.config/superfile/config.toml
theme = "cyberdream"
```

Relevant links:
- Custom theme docs: https://superfile.netlify.app/configure/custom-theme/
- Config file paths: https://superfile.netlify.app/configure/config-file-path
