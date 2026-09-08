local ruff_lsp = require('leon.lsp.ruff')
local lua_lsp = require('leon.lsp.lua')
local lsp_configs = {}

-- Configure lsp config options
vim.lsp.config("ruff", ruff_lsp)
vim.lsp.config("lua", lua_lsp)

-- Enable LSP config options
vim.lsp.enable("ruff")
vim.lsp.enable("lua")
