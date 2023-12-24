# CYBERDREAM

A high-contrast, futuristic & vibrant theme for neovim.

## 🚀 Features

-   **Transparency-first design** - all design decisions are made with transparency in mind
-   **High contrast** - Colours have been carefully chosen to be cohesive and easy on the eyes while still being easy to distinguish

<details>
    <summary><b>Supported Plugins</b></summary>
    <ul>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/goolord/alpha-nvim"> alpha-nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/lazy.nvim"> lazy.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/ggandor/leap.nvim"> leap.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/hrsh7th/nvim-cmp"> nvim-cmp</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-treesitter/nvim-treesitter"> nvim-treesitter</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-telescope/telescope.nvim"> telescope.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/which-key.nvim"> which-key.nvim</a></label></li>
    </ul>
</details>

## 📦 Installation

Lazy:

```lua
{
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            transparent = true, -- enable transparent background
            italic_comments = true, -- italicize comments
            hide_fillchars = true, -- replace all fillchars with ' ' for the ultimate clean look
        })
        vim.cmd("colorscheme cyberdream") -- set the colorscheme
    end,
}
```

## 🤝 Contributing

Pull requests are welcome. If a plugin you use is not supported, please open an issue and I'll try to add support for it. If you have any suggestions or feedback, please open an issue.
