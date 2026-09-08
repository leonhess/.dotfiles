---@type vim.lsp.Config
return {
  --  Comamand nvim use to execute language server
  --  can be a lust of strings, first is executable and the extra arguments
  cmd = { 'ruff', 'server' },
  -- nvim supported filetypes
  filetypes = { 'python' },
  -- list of file names or directorys to be used to determine the project root
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
  settings = {},
}
