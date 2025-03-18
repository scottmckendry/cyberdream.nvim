local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        KubectlHeader = { fg = t.blue, bold = true },
        KubectlWarning = { fg = t.yellow },
        KubectlError = { fg = t.red },
        KubectlInfo = { fg = t.cyan },
        KubectlDebug = { fg = t.yellow },
        KubectlSuccess = { fg = t.cyan },
        KubectlPending = { fg = t.purple },
        KubectlDeprecated = { fg = t.magenta },
        KubectlExperimental = { fg = t.pink },
        KubectlNote = { fg = t.cyan },
        KubectlGray = { fg = t.grey },
    }

    return highlights
end
return M
