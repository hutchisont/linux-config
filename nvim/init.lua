-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'plugins.autocompletion',
  require 'plugins.autopairs',
  require 'plugins.catppuccin',
  require 'plugins.morta',
  require 'plugins.gitsigns',
  require 'plugins.harpoon',
  require 'plugins.indent-blanklines',
  require 'plugins.lsp',
  require 'plugins.lualine',
  require 'plugins.oil',
  require 'plugins.telescope',
  require 'plugins.treesitter',
  require 'plugins.which-key',

}, {})

require 'personal.autocmds'
require 'personal.keymaps'
require 'personal.opts'
require 'personal.theme'
require 'personal.diagnostics'
