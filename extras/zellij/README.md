## Usage

### Install

1. Save the contents of either theme file:

    - Dark theme: Save `cyberdream.kdl` to `~/.config/zellij/themes/cyberdream.kdl`
    - Light theme: Save `cyberdream-light.kdl` to `~/.config/zellij/themes/cyberdream-light.kdl`

    If the directory doesn't exist, create it first with:

    ```bash
    mkdir -p ~/.config/zellij/themes
    ```

2. Apply the theme by either:
    - Adding to your `config.kdl`:
        ```kdl
        // For dark theme
        theme "cyberdream"
        // Or for light theme
        theme "cyberdream-light"
        ```
    - Or launching zellij with the theme flag:
        ```bash
        # For dark theme
        zellij --theme cyberdream
        # For light theme
        zellij --theme cyberdream-light
        ```

See the [Zellij Themes documentation](https://zellij.dev/documentation/themes) for more information about custom themes.
