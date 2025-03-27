# Usage

Requires the [catppuccin tmux](https://github.com/catppuccin/tmux) plugin. It is recommended that you follow the [manual installation instructions](https://github.com/catppuccin/tmux?tab=readme-ov-file#manual-recommended) to avoid name conflicts.

## Install

Copy `cyberdream.conf` or `cyberdream-light.conf` to the catppuccin themes directory as `catppuccin_cyberdream_tmux.conf`

```bash
cp ./cyberdream.conf ~/.config/tmux/plugins/catppuccin/tmux/themes/catppuccin_cyberdream_tmux.conf
```

## Usage

In your `.tmux.conf` file, add the following lines:

```tmux
set -g @catppuccin_flavour "cyberdream"
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
```

For more configuration options please refer to [catppuccin docs](https://github.com/catppuccin/tmux?tab=readme-ov-file#configuration-options).
