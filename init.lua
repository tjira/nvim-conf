vim.opt.backup = false
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.shortmess = 'filnotxFIOT'
vim.opt.showmode = false
vim.opt.signcolumn = 'number'
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.wrap = false
vim.opt.writebackup = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
vim.g.undotree_DiffAutoOpen = 0
vim.g.undotree_HelpLine = 0
vim.g.undotree_ShortIndicators = 1
vim.cmd('let g:loaded_perl_provider = 0')
vim.cmd('let g:loaded_ruby_provider = 0')

vim.diagnostic.config{
    virtual_text = false,
    signs = true,
}

if vim.fn.has('unix') == 1 then
    vim.cmd('let g:vimtex_view_method = "zathura"')
end

if vim.fn.has('win32') == 1 then
    vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
    vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode' vim.opt.shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
    vim.opt.shell = 'powershell' vim.opt.shellxquote = '' vim.opt.shellquote = ''
end

require('plugins')
require('keymaps')
