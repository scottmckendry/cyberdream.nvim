## Usage

1. Save the contents of one of the theme files to a location of your choice:

    - Dark theme: `cyberdream.json`
    - Light theme: `cyberdream-light.json`
    - Muted dark theme: `cyberdream-muted.json`

2. Open **Settings → Theme & Colors** in Dux.
3. Select **Custom** from the theme dropdown.
4. Choose the theme file path.

Alternatively, set the theme in `~/.config/dms/settings.json` (or a file in `~/.config/dms/config.d/`):

```json
{
    "currentThemeName": "custom",
    "customThemeFile": "/path/to/cyberdream.json"
}
```

See the [Dux custom themes documentation](https://duxlabs.dev/docs/dms/custom-themes) for more information.
