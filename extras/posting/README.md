# Cyberdream Posting Theme

This directory contains the **Cyberdream** theme for [Posting](https://posting.sh) in both dark and light variants.

## Installation

1. Locate Posting's theme directory:
   ```sh
   posting locate themes
   ```
2. Copy the desired variant(s) into that directory:
   ```sh
   cp cyberdream.yaml "$(posting locate themes)"/
   # (optional) light variant
   cp cyberdream-light.yaml "$(posting locate themes)"/
   ```
3. Set the theme in your `config.yaml`:

   ```yaml
   theme: cyberdream # or "cyberdream" for the dark, same name for light
   ```

   The theme name comes from the `name:` field inside the file (not the filename).

4. Restart Posting (or let it live-reload if `watch_themes` is enabled, which it is by default).

For more details, see the [Posting theme guide](https://posting.sh/guide/themes/).
