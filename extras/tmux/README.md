# Usage

Requires the [catppuccin tmux](https://github.com/catppuccin/tmux) plugin. Install with a plugin manager like [tpm](https://github.com/tmux-plugins/tpm) before proceeding.

## Install

Copy `cyberdream.tmuxtheme` or `cyberdream-light.tmuxtheme` to the catppuccin themes directory as `catppuccin_cyberdream.tmuxtheme`

```bash
cp ./cyberdream.tmuxtheme ~/.tmux/plugins/tmux/themes/catppuccin_cyberdream.tmuxtheme
```

## Usage

In your `.tmux.conf` file, add the following lines:

```tmux
set -g @plugin 'catppuccin/tmux'
set -g @catppuccin_flavour "cyberdream"
```

For more configuration options please refer to [catppuccin docs](https://github.com/catppuccin/tmux?tab=readme-ov-file#configuration-options).
