local M = {}

M.variants = {
    default = "default",
    light = "light",
}

M.extras = {
    alacritty = { extension = "toml", name = "alacritty" },
    base16 = { extension = "yaml", name = "base16" },
    fish = { extension = "theme", name = "fish" },
    foot = { extension = "ini", name = "foot" },
    ghostty = { extension = nil, name = "ghostty" },
    gitui = { extension = "ron", name = "gitui" },
    helix = { extension = "toml", name = "helix" },
    kitty = { extension = "conf", name = "kitty" },
    lazydocker = { extension = "yml", name = "lazydocker" },
    lazygit = { extension = "yml", name = "lazygit" },
    lsd = { extension = "yml", name = "lsd" },
    pywal = { extension = "json", name = "pywal" },
    rio = { extension = "toml", name = "rio" },
    textmate = { extension = "tmTheme", name = "textmate" },
    tilix = { extension = "json", name = "tilix" },
    tmux = { extension = "tmuxtheme", name = "tmux" },
    vivid = { extension = "yml", name = "vivid" },
    warp = { extension = "yaml", name = "warp" },
    wezterm = { extension = "lua", name = "wezterm" },
    windowsterminal = { extension = "json", name = "windowsterminal" },
    yazi = { extension = "toml", name = "yazi" },
    zellij = { extension = "kdl", name = "zellij" },
    zed = { extension = "json", name = "zed" },
}

--- Create/overwrite a file in the extras directory.
--- @param str string: The string to write to the file.
local function write(str, filename)
    print("writing extra: extras/" .. filename)
    vim.fn.mkdir(vim.fs.dirname("extras/" .. filename), "p")
    local file = io.open("extras/" .. filename, "w")
    if file then
        file:write(str)
        file:close()
    else
        print("Failed to write to file: extras/" .. filename)
    end
end

--- Generate the extras for a given variant.
--- @param variant string: Variation of the colorscheme to use. Defaults to "default".
local function generate_extras(variant)
    local suffix = variant == "default" and "" or "-" .. variant

    for name, extra in pairs(M.extras) do
        local extra_module = require("cyberdream.extra." .. name)
        local str = extra_module.generate(variant)
        if extra.extension then
            write(str, extra.name .. "/" .. "cyberdream" .. suffix .. "." .. extra.extension)
        else
            write(str, extra.name .. "/" .. "cyberdream" .. suffix)
        end
    end
end

--- Generate Extras for all styles.
function M.generate_all_extras()
    for variant, _ in pairs(M.variants) do
        generate_extras(variant)
    end
end

return M
