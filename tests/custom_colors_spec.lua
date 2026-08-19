local helpers = require("tests.helpers")

describe("custom color overrides", function()
    before_each(function()
        helpers.reset_modules()
    end)

    -- Minimal palettes: only overridden keys matter (merges are partial)
    local dark_palette = {
        fg = "#e6e5df",
        bg = "#15120a",
    }

    local light_palette = {
        fg = "#100f0f",
        bg = "#fffcf0",
    }

    -- ----------------------------------------------------------------
    -- #231 regression: variant="auto" ignores per-variant overrides
    -- ----------------------------------------------------------------
    describe("variant='auto' with per-variant overrides (#231)", function()
        it("applies dark overrides when vim.o.background='dark'", function()
            vim.o.background = "dark"
            local theme = helpers.setup_theme({
                variant = "auto",
                saturation = 1,
                cache = false,
                colors = {
                    dark = dark_palette,
                    light = light_palette,
                },
                extensions = { base = true },
            })

            assert.are.equal("#e6e5df", theme.highlights.Normal.fg)
            assert.are.equal("#15120a", theme.highlights.Normal.bg)
        end)

        it("applies light overrides when vim.o.background='light'", function()
            vim.o.background = "light"
            local theme = helpers.setup_theme({
                variant = "auto",
                saturation = 1,
                cache = false,
                colors = {
                    dark = dark_palette,
                    light = light_palette,
                },
                extensions = { base = true },
            })

            assert.are.equal("#100f0f", theme.highlights.Normal.fg)
            assert.are.equal("#fffcf0", theme.highlights.Normal.bg)
        end)

        it("resolves 'auto' to actual background, not literal 'auto' key", function()
            vim.o.background = "dark"
            local palette = vim.deepcopy(dark_palette)
            palette.fg = "#deadbe"
            local theme = helpers.setup_theme({
                variant = "auto",
                colors = {
                    auto = { fg = "#badc0d" }, -- should NOT be used
                    dark = palette,
                },
                extensions = { base = true },
            })

            assert.are.not_equal("#badc0d", theme.highlights.Normal.fg)
            assert.are.equal("#deadbe", theme.highlights.Normal.fg)
        end)
    end)

    -- ----------------------------------------------------------------
    -- #227: explicit variant in config must override vim.o.background
    -- ----------------------------------------------------------------
    describe("explicit variant in config (#227)", function()
        it("uses light overrides when config variant='light'", function()
            vim.o.background = "dark"
            local theme = helpers.setup_theme({
                variant = "light",
                colors = {
                    dark = dark_palette,
                    light = light_palette,
                },
                extensions = { base = true },
            })

            assert.are.equal("#100f0f", theme.highlights.Normal.fg)
            assert.are.equal("#fffcf0", theme.highlights.Normal.bg)
        end)

        it("uses muted overrides when config variant='muted'", function()
            local muted_palette = vim.deepcopy(dark_palette)
            muted_palette.fg = "#c0ffee"
            local theme = helpers.setup_theme({
                variant = "muted",
                colors = {
                    muted = muted_palette,
                },
                extensions = { base = true },
            })

            assert.are.equal("#c0ffee", theme.highlights.Normal.fg)
        end)
    end)

    -- ----------------------------------------------------------------
    -- Explicit variant param via theme.setup(variant)
    -- ----------------------------------------------------------------
    describe("explicit variant param overrides config", function()
        it("uses light overrides when variant='light' passed directly", function()
            vim.o.background = "dark"
            local theme = helpers.setup_theme({
                variant = "default",
                colors = {
                    dark = dark_palette,
                    light = light_palette,
                },
                extensions = { base = true },
            }, "light")

            assert.are.equal("#100f0f", theme.highlights.Normal.fg)
        end)
    end)

    -- ----------------------------------------------------------------
    -- General (non-variant) overrides
    -- ----------------------------------------------------------------
    describe("general (cross-variant) overrides", function()
        it("applies top-level colors to all variants", function()
            local theme = helpers.setup_theme({
                variant = "default",
                colors = { fg = "#123456" },
                extensions = { base = true },
            })
            assert.are.equal("#123456", theme.highlights.Normal.fg)
        end)

        it("variant-specific overrides beat general overrides", function()
            local palette = vim.deepcopy(dark_palette)
            palette.fg = "#654321"
            local theme = helpers.setup_theme({
                variant = "default",
                colors = {
                    fg = "#112233",
                    dark = palette,
                },
                extensions = { base = true },
            })
            assert.are.equal("#654321", theme.highlights.Normal.fg)
        end)
    end)

    -- ----------------------------------------------------------------
    -- Saturation interaction
    -- ----------------------------------------------------------------
    describe("saturation with custom colors", function()
        it("preserves custom fg when saturation=1", function()
            vim.o.background = "dark"
            local theme = helpers.setup_theme({
                variant = "auto",
                saturation = 1,
                colors = { dark = dark_palette },
                extensions = { base = true },
            })
            assert.are.equal("#e6e5df", theme.highlights.Normal.fg)
        end)
    end)
end)
