## Usage

### Install

1. Open Windows Terminal settings (Ctrl+,) and click "Open JSON file" in the bottom left corner.

2. In the `schemes` array, add the contents of both `cyberdream.json` and `cyberdream-light.json`:

    ```json
    {
        "schemes": [
            {
                // ... existing schemes ...
            },
            {
                // paste cyberdream.json contents here
            },
            {
                // paste cyberdream-light.json contents here
            }
        ]
    }
    ```

3. Apply the theme:
    - Open Windows Terminal Settings
    - Select your profile
    - Click "Appearance"
    - Select either "cyberdream" or "cyberdream-light" from the "Color scheme" dropdown

See the [Windows Terminal Color Schemes documentation](https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes) for more information.
