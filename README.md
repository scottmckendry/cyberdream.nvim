<p align="center">
    <img src="https://github.com/scottmckendry/cyberdream.nvim/assets/39483124/e758f47a-32eb-4eac-a008-eb59272badef">
     <b><i>A high-contrast, futuristic & vibrant theme for neovim</i></b>
</p>

<p align="center">
    <a href="https://github.com/scottmckendry/cyberdream.nvim/issues">
        <img alt="Issues" src="https://img.shields.io/github/issues/scottmckendry/cyberdream.nvim?style=for-the-badge&logo=github&color=%23ffbd5e">
    </a>
    <a href="https://github.com/scottmckendry/cyberdream.nvim/blob/main/LICENSE">
        <img alt="License" src="https://img.shields.io/github/license/scottmckendry/cyberdream.nvim?style=for-the-badge&logo=github&color=%235ef1ff">
    </a>
    <a href="https://github.com/scottmckendry/cyberdream.nvim/stars">
        <img alt="stars" src="https://img.shields.io/github/stars/scottmckendry/cyberdream.nvim?style=for-the-badge&logo=github&color=%23bd5eff">
    </a>
    <br>
    <a href="https://dotfyle.com/plugins/scottmckendry/cyberdream.nvim">
	    <img src="https://dotfyle.com/plugins/scottmckendry/cyberdream.nvim/shield?style=for-the-badge" />
    </a>
</p>

## 🚀 Features

-   **Transparency-first design** - all design decisions are made with transparency in mind
-   **High contrast** - Colours have been carefully chosen to be cohesive and easy on the eyes while still being easy to distinguish

<details>
    <summary><b>Supported Plugins</b></summary>
    <ul>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/goolord/alpha-nvim"> alpha-nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvimdev/dashboard-nvim"> dashboard-nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/lewis6991/gitsigns.nvim"> gitsigns.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/Zeioth/heirline-components.nvim"> heirline-components.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/lukas-reineke/indent-blankline.nvim"> indent-blankline.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/lazy.nvim"> lazy.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/ggandor/leap.nvim"> leap.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-lualine/lualine.nvim"> lualine.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/noice.nvim"> noice.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/hrsh7th/nvim-cmp"> nvim-cmp</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/rcarriga/nvim-notify"> nvim-notify</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-treesitter/nvim-treesitter"> nvim-treesitter</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-treesitter/nvim-treesitter-context"> nvim-treesitter-context</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/HiPhish/rainbow-delimiters.nvim"> rainbow-delimiters.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-telescope/telescope.nvim"> telescope.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/which-key.nvim"> which-key.nvim</a></label></li>
    </ul>
</details>

![image](https://github.com/scottmckendry/cyberdream.nvim/assets/39483124/55ad863e-11e6-4539-bf67-118ea328fb5b)
![image](https://github.com/scottmckendry/cyberdream.nvim/assets/39483124/387a32f3-da38-4e96-b1e6-ea55591ec9ae)

## 📦 Installation

Lazy:

```lua
{
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
}
```

Packer:

```lua
use { "scottmckendry/cyberdream.nvim" }
```

Lualine (optional):

```lua
{
    local cyberdream = require("lualine.themes.cyberdream") -- or require("lualine.themes.cyberdream-light") for the light variant
    require("lualine").setup({
        -- ... other config
        options = {
            theme = "cyberdream",
        },
        -- ... other config
    })
}
```

See my personal lualine config [here](https://github.com/scottmckendry/Windots/blob/main/nvim/lua/plugins/lualine.lua) for an example.

## 🎨 Usage

```lua
vim.cmd("colorscheme cyberdream")
```

## ⚙️ Configuring

Calling `setup` is optional, but allows you to configure the theme to your liking.
Below is an example of all the available configuration options with their default values:

```lua
require("cyberdream").setup({
    -- Enable transparent background
    transparent = false,

    -- Enable italics comments
    italic_comments = false,

    -- Replace all fillchars with ' ' for the ultimate clean look
    hide_fillchars = false,

    -- Modern borderless telescope theme
    borderless_telescope = true,

    -- Set terminal colors used in `:terminal`
    terminal_colors = true,

    theme = {
        variant = "default", -- use "light" for the light variant
        highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

            -- Example:
            Comment = { fg = "#696969", bg = "NONE", italic = true },

            -- Complete list can be found in `lua/cyberdream/theme.lua`
        },

        -- Override a color entirely
        colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            bg = "#000000",
            green = "#00ff00",
            magenta = "#ff00ff",
        },
    },
})
```

## 🧑‍🍳 Recipes

Include these alongside the `setup` function to add additional functionality to the theme.

#### Map a key to toggle between light and dark mode

```lua
-- Add a custom keybinding to toggle the colorscheme
vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
```

#### Create an `autocmd` to hook into the toggle event and run custom code

```lua
-- The event data property will contain a string with either "default" or "light" respectively
vim.api.nvim_create_autocmd("User", {
    pattern = "CyberdreamToggleMode",
    callback = function(event)
        -- Your custom code here!
        -- For example, notify the user that the colorscheme has been toggled
        print("Switched to " .. event.data .. " mode!")
    end,
})
```

![image](https://github.com/scottmckendry/cyberdream.nvim/assets/39483124/c0188d60-d62b-4a15-965d-a19757c484e6)


## 🤝 Contributing

Pull requests are welcome. If a plugin you use is not supported, please open an issue and I'll try to add support for it. If you have any suggestions or feedback, please open an issue.
