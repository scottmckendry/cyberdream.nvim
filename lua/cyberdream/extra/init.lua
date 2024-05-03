local M = {}

M.variants = { default = "default", light = "light" }

M.extras = {
    alacritty = { extension = "toml", name = "Alacritty" },
}

--- Create/overwrite a file in the extras directory.
--- @param str string: The string to write to the file.
local function write(str, filename)
    print("writing extra: extras/" .. filename)
    vim.fn.mkdir(vim.fs.dirname("extras/" .. filename), "p")
    local file = io.open("extras/" .. filename, "w")
    file:write(str)
    file:close()
end

--- Generate the extras for a given variant.
--- @param variant string: Variation of the colorscheme to use. Defaults to "default".
local function generate_extras(variant)
    if variant == "default" then
        variant = "" -- remove the default prefix
    else
        variant = "-" .. variant
    end
    for name, extra in pairs(M.extras) do
        local extra_module = require("cyberdream.extra." .. name)
        local str = extra_module.generate(variant)
        write(str, extra.name .. "/" .. "cyberdream" .. variant .. "." .. extra.extension)
    end
end

--- Generate Extras for all styles.
function M.generate_all_extras()
    for variant, _ in pairs(M.variants) do
        generate_extras(variant)
    end
end

return M
