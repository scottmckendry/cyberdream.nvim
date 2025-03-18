# Contributing to cyberdream.nvim 🚀

First off, thanks for taking the time to contribute! 🎉

![image](https://github.com/scottmckendry/cyberdream.nvim/assets/39483124/5c4cfa7e-e787-4a06-ba8c-f4aa8f06805a)

> [!TIP]
> The best way you can contribute to cyberdream.nvim is by giving it a star ⭐️ and sharing it with others!

Every contribution is appreciated, whether it's a bug report, a feature request, a question, or a pull request. This document will guide you through the process of contributing to this project.

## Table of Contents 📚

- [Reporting Bugs & Requesting Features](#reporting-bugs--requesting-features-)
- [Pull Requests](#pull-requests-)
- [Adding Support for Plugins](#adding-support-for-plugins-)
- [Adding Extras](#adding-extras-)

## Reporting Bugs & Requesting Features 🐛

If you find a bug or have a feature request, please open an issue using the appropriate template:

- [Bug Report](https://github.com/scottmckendry/cyberdream.nvim/issues/new?assignees=&labels=bug&projects=&template=bug.yml)
- [Feature Request (or question)](https://github.com/scottmckendry/cyberdream.nvim/issues/new?assignees=&labels=question&projects=&template=question.yml)

Some things to keep in mind when opening an issue:

- Make sure to search for existing issues before opening a new one. If you find an existing issue that matches your problem, please add a 👍 reaction to it.
- Be as detailed as possible when describing the bug or feature request. Include any relevant information, such as the version of Neovim you're using & your cyberdream.nvim config settings.

## Pull Requests 🛠

Commits should be in the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format. This helps with generating changelogs and keeping the commit history clean.

When opening a pull request, please include a description of the changes you've made. If your PR is related to an existing issue, please reference it in the description.

## Adding Support for Plugins 📦

If you'd like to add support for a plugin that isn't currently supported by cyberdream.nvim, you can do so by creating a new file in the `lua/cyberdream/extensions` directory. The file should be named after the plugin, with the `.lua` extension. The format is as follows:

```lua
-- lua/cyberdream/extensions/plugin-name.lua
local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        -- Add your highlights here
        -- See lua/cyberdream/colors.lua for a complete list of available colors in the palette
        HighlightGroupName = { fg = t.blue },
        AnotherHighlightGroupName = { fg = t.purple, bg = t.bg_highlight },
    }

    return highlights
end
return M
```

Once you've created the extension file, you'll need to add it to the `extensions` table in `lua/cyberdream/config.lua` and update the `extensions` type definition. If you've done this correctly, the highlights will apply the next time the plugin is loaded.

## Adding Extras 🎨

We support a number of terminals and other goodies to make the cyberdream experience even better. These are dynamically generated using GitHub actions. This ensures that both light and dark mode variants are generated with minimal effort while adhering as closely as possible to the [cyberdream palette](https://github.com/scottmckendry/cyberdream.nvim/blob/main/lua/cyberdream/colors.lua).

> [!NOTE]
> Do not edit the extras directly. Your changes will be overwritten the next time the GitHub action runs.

To add a new extra, create a new template file in the `lua/cyberdrem/extra` directory. Use the existing templates as a guide. Once you've created the template, you'll need to add it to the `extras` table in `lua/cyberdream/extra/init.lua`, including the extension and name.

Once you've done this, the extra will be generated the next time the GitHub action runs. You can find the generated extras in the `extras` directory.
