local helpers = require("tests.helpers")

describe("variant selection", function()
    before_each(function()
        helpers.reset_modules()
    end)

    it("uses dark palette for variant='default'", function()
        local theme = helpers.setup_theme({ variant = "default", extensions = { base = true } })
        -- dark bg is not "NONE" by default
        assert.is_not.equal("NONE", theme.highlights.Normal.bg)
    end)

    it("uses light palette for variant='light'", function()
        local theme = helpers.setup_theme({ variant = "light", extensions = { base = true } })
        assert.is_not.equal("NONE", theme.highlights.Normal.bg)
    end)

    it("uses muted palette for variant='muted'", function()
        local theme = helpers.setup_theme({ variant = "muted", extensions = { base = true } })
        assert.is_not.equal("NONE", theme.highlights.Normal.bg)
    end)

    it("auto: picks dark palette when vim.o.background='dark'", function()
        vim.o.background = "dark"
        local theme = helpers.setup_theme({ variant = "auto", extensions = { base = true } })
        local colors = require("cyberdream.colors")
        assert.are.equal(colors.default.bg, theme.highlights.Normal.bg)
    end)

    it("auto: picks light palette when vim.o.background='light'", function()
        vim.o.background = "light"
        local theme = helpers.setup_theme({ variant = "auto", extensions = { base = true } })
        local colors = require("cyberdream.colors")
        assert.are.equal(colors.light.bg, theme.highlights.Normal.bg)
    end)

    it("explicit variant overrides vim.o.background", function()
        vim.o.background = "light"
        local theme = helpers.setup_theme({ variant = "default", extensions = { base = true } })
        local colors = require("cyberdream.colors")
        -- variant='default' should use dark palette regardless of background
        assert.are.equal(colors.default.bg, theme.highlights.Normal.bg)
    end)
end)
