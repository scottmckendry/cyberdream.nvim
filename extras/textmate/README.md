## Usage

### Bat

Create a bat config dir.

```sh
mkdir -p "$(bat --config-dir)/themes"
```

Download the cyberdream `.tmTheme` files into that directory.

Rebuild the bat themes cache.

```sh
bat cache --build
```

Create or use an existing config file.

```sh
# Show existing config file location.
bat --config-file
# or generate a new one
bat --generate-config-file
```

Add the theme to the config.

```conf
--theme="cyberdream"
```

See [Bat - Adding a new theme](https://github.com/sharkdp/bat?tab=readme-ov-file#adding-new-themes)
or [Bat - Configuration file](https://github.com/sharkdp/bat?tab=readme-ov-file#configuration-file)

### Delta

Prerequisite [Bat](#bat) theme.

Add the theme to your [delta configuration section](https://dandavison.github.io/delta/configuration.html) in your `~/.gitconfig`.

```gitconfig
[delta]
  features = cyberdream

[delta "decorations"]
  syntax-theme = cyberdream
```

See [delta](https://dandavison.github.io/delta/)
