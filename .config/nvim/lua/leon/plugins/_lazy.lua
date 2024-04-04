local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end

-- Prepend lazy.nvim to runtimepath
vim.opt.rtp:prepend(lazypath)

-- {{{ Get configs from seperate files
local function get_config(plug_name)
  return function ()
    require('leon.plugins._' .. plug_name)
  end
end
-- }}}

local plugins = {
  ---------------
  -- Colortheme
  --------------
  --
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- custom options here
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd [[colorscheme tokyodark]]
    end,
    },

  
  -----------------------------------------------------------------------------
   -- OIL
  -----------------------------------------------------------------------------

  {
    'stevearc/oil.nvim',
    config = get_config('oil'),
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    }
  },


  -----------------------------------------------------------------------------
   -- Telescope
  -----------------------------------------------------------------------------
  
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = get_config('telescope'),
  }, 

  -----------------------------------------------------------------------------
  -- LSP
  -----------------------------------------------------------------------------
  {
    'neovim/nvim-lspconfig',
    config = get_config('lsp'),
  },


  -----------------------------------------------------------------------------
   -- Completion
  -----------------------------------------------------------------------------

   {
    'hrsh7th/nvim-cmp',
    config = get_config('nvim-cmp'),
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',                -- LSP completion
      'hrsh7th/cmp-nvim-lsp-signature-help', -- Highlight current parameter in function signature
      'hrsh7th/cmp-nvim-lua',                -- Neovim Lua API completion
      'hrsh7th/cmp-calc',                    -- Evaluate mathematical expressions
      'hrsh7th/cmp-buffer',                  -- Buffer-local words
      'hrsh7th/cmp-path',                    -- Directory completion
    },
  }

}



-----------------------------------------------------------------------------
 -- Setup
-----------------------------------------------------------------------------

-- Initialize lazy
require('lazy').setup(
  plugins,
  {
    lockfile = vim.fn.stdpath('data') .. '/lazy-lock.json',
  }
)
