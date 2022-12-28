vim.opt.backup = false
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'number'
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.undofile = true
vim.opt.wrap = false
vim.opt.writebackup = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
vim.g.undotree_DiffAutoOpen = 0
vim.g.undotree_HelpLine = 0
vim.g.undotree_ShortIndicators = 1

vim.diagnostic.config{
    virtual_text = false,
    signs = true,
}

vim.cmd('let g:loaded_perl_provider = 0')
vim.cmd('let g:loaded_ruby_provider = 0')
vim.cmd('set shortmess+=I')
vim.cmd('set noshowmode')

require('keymaps')
require('plugins')
