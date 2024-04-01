local cmd = vim.cmd
local opt = vim.opt


cmd 'filetype indent plugin on'
cmd 'set inccommand=split'

opt.shortmess:append 'c'                  -- Avoid showing extra messages on completion

opt.clipboard = 'unnamedplus' --Allow Neovim to acces system clipboaod
opt.number = true
--opt.relativenumber = true
opt.cmdheight = 2                         -- More space in Neovim command line
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
opt.fileencoding = 'utf-8'                -- Encoding written to files
opt.foldmethod = 'marker'
opt.hidden = true                         -- When buffer goes out of sight, don't delete it
opt.ignorecase = true                     -- Ignore case in search patterns
opt.list = true
opt.listchars = { tab = '->', trail = '·' }
opt.scrolloff = 4                         -- How many lines to keep when scrolling
opt.showtabline = 2                       -- Always show tabs
opt.sidescrolloff = 8                     -- Horizontal scrolloff
opt.smartindent = true                    -- Smarter indentation
opt.splitbelow = true                     -- Split below, not above
opt.splitright = true                     -- Split to the right, not left
opt.swapfile = false                      -- Don't create swapfiles
opt.termguicolors = true                  -- Needed for themes to show correctly
opt.timeoutlen = 500                      -- Set time after which Neovim interpretes keystrokes
--opt.undofile = true                       -- Persistent undo
opt.updatetime = 300                      -- Faster completion
opt.writebackup = false
opt.expandtab = true                      -- Convert tabs to spaces
opt.shiftwidth = 2                        -- Use indentation of x spaces
opt.tabstop = 2                           -- Convert tab to x spaces
opt.numberwidth = 4
opt.signcolumn = 'yes'                    -- Always show sign column
opt.wildmenu = true
opt.wildmode = { list = 'full', 'full' }
opt.wrap = false                          -- Set visual line wrapping




