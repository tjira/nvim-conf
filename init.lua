require('plugins')

vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.signcolumn = 'number'


vim.g.mapleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


vim.diagnostic.config({
    virtual_text = false,
    signs = true,
})

vim.cmd('let g:loaded_perl_provider = 0')
vim.cmd('let g:loaded_ruby_provider = 0')
vim.cmd('set shortmess+=I')
vim.cmd('set noshowmode')

vim.g.undotree_DiffAutoOpen = 0
vim.g.undotree_HelpLine = 0

require('keymaps')
