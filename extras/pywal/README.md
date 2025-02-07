## Usage

### Install

1. Save the contents of either theme file:

    - Dark theme: Save `cyberdream.json` to `~/.config/wal/colorschemes/dark/cyberdream.json`
    - Light theme: Save `cyberdream-light.json` to `~/.config/wal/colorschemes/light/cyberdream-light.json`

    If the directories don't exist, create them first with:

    ```bash
    mkdir -p ~/.config/wal/colorschemes/{dark,light}
    ```

2. Apply the theme using pywal:

    ```bash
    # For dark theme
    wal --theme cyberdream

    # For light theme
    wal --theme cyberdream-light --light
    ```

See the [pywal documentation](https://github.com/dylanaraps/pywal/wiki/Customization#making-your-own-colorschemes) for more information about custom colorschemes.
