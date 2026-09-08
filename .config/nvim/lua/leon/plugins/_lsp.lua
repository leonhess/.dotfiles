local ruff_lsp = require('leon.lsp.ruff')
local lua_lsp = require('leon.lsp.lua')
local lsp_configs = {}

-- Configure lsp config options
vim.lsp.config("ruff", ruff_lsp)
vim.lsp.config("lua", lua_lsp)

-- Enable LSP config options
vim.lsp.enable("ruff")
vim.lsp.enable("lua")


-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }

    vim.keymap.set('n', '<leader>ls', vim.lsp.buf.document_symbol, opts)
    vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>lgi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>lsh', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>lwa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>lwr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>lwl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>lD', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>lgr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>lf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
    vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, opts)

  end,
})
