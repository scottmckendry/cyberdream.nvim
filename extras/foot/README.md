## Usage

> [!IMPORTANT]
> These configs use the `[colors-dark]` and `[colors-light]` sections, which
> require foot **1.26** or newer. The old `[colors]` section (removed in foot
> 1.28) is no longer generated.

1. Save `cyberdream.ini`, `cyberdream-muted.ini` or `cyberdream-light.ini` to
   `~/.config/foot/`
2. Add the following line to the `[main]` section of your `~/.config/foot/foot.ini`:

```ini
include=~/.config/foot/cyberdream.ini
```

### Dark & light variants

`cyberdream.ini` and `cyberdream-muted.ini` contain both a dark and a light
theme. foot starts in the dark variant by default; switch at runtime with the
`color-theme-toggle` key binding, or start in the light variant by adding this
to your `foot.ini`:

```ini
[main]
initial-color-theme=light
```

`cyberdream-light.ini` is pinned to the light palette in both sections, so
including it always gives you the light theme regardless of foot's current
color theme.
