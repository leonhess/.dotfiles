-- remap options
local cmd_opts = {noremap = true, silent = true}

-- Map the Leader key
vim.keymap.set("n",'<Space>', '<NOP>', cmd_opts)
vim.g.mapleader = ' '
