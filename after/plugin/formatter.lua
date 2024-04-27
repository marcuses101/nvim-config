-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
        --         rust = {
        --             require("formatter.filetypes.rust").rustfmt
        --         },
        javascript = {
            require("formatter.filetypes.javascript").prettierd,
        },
        json = {
            require("formatter.filetypes.json").prettierd,
        },
        typescript = {
            require("formatter.filetypes.typescript").prettierd,
        },
        javascriptreact = {
            require("formatter.filetypes.javascriptreact").prettierd
        },
        -- Use the special "*" filetype for defining formatter configurations on
        -- any filetype
    }
}

vim.api.nvim_exec([[
 augroup FormatAutogroup
   autocmd!
   autocmd BufWritePost * FormatWrite
 augroup END
 ]], false)
