
local ruff_lsp = require('lsp.ruff')

local lsp_configs = {}

-- Configure lsp config options
vim.lsp.config("ruff", ruff_lsp)

-- Enable LSP config options
vim.lsp.enable("ruff")
