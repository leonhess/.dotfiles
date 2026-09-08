require('mason').setup {}
require('mason-lspconfig').setup {
  automatic_enable = false, -- disable auto config of lsp from https://github.com/mason-org/mason-lspconfig.nvim
  ensure_installed = { --install when not found
    'ruff',
    'lua_ls',
  },
  icons = {
    package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
  },
}
