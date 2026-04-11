## Usage

> [!IMPORTANT]
> The [Bat theme](../textmate/README.md#bat) must be installed first as delta uses bat's themes for syntax highlighting.

Put the following config into your `.gitconfig`

The syntax theme is contained in the gitconfig and does not have to be manually declared like in [Delta Syntax-Theme](../textmate/README.md#delta-syntax-theme).

```gitconfig
[include]
 path = <config-path>/delta/themes/cyberdream.gitconfig
 path = <config-path>/delta/themes/cyberdream-light.gitconfig

[delta]
 features = cyberdream-<dark|light>
```

See also: [Delta Custom Themes](https://dandavison.github.io/delta/custom-themes.html)
