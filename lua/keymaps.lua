require('autocommands')
require('functions')

-- Function Function
vim.keymap.set('n', '<ESC>', [[<ESC>:noh<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<F2>', [[:UndotreeToggle<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<F6>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="make %:t:r"<CR>]], { noremap = true, silent = true })

-- Alt Maps
vim.keymap.set('n', '<A-Down>', [[:lua MoveDown()<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', [[:lua MoveUp()<CR>]], { noremap = true, silent = true })

-- Control Maps
vim.keymap.set('i', '<C-S>', [[<ESC>:w<CR>]], { noremap = true, silent = true })
vim.keymap.set('i', '<C-V>', [[<ESC>"*pa]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', [[:BufferLineCyclePrev<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', [[:BufferLineCycleNext<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-D>', [[<C-D>zz]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-S>', [[:w<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-U>', [[<C-U>zz]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-V>', [["*p]], { noremap = true, silent = true })
vim.keymap.set('v', '<C-C>', [["*y]], { noremap = true, silent = true })
vim.keymap.set('v', '<C-P>', [["_dP]], { noremap = true, silent = true })
vim.keymap.set('v', '<C-V>', [["*p]], { noremap = true, silent = true })
vim.keymap.set('v', '<C-X>', [["*d]], { noremap = true, silent = true })

-- Control Shift Maps
vim.keymap.set('n', '<C-S-Down>', [[<C-W>+]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Left>', [[<C-W><]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Right>', [[<C-W>>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Up>', [[<C-W>-]], { noremap = true, silent = true })

-- Leader Maps
vim.keymap.set('n', '<leader>bc', [[:enew<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bd', [[:bdelete<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ch', [[q:]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fb', [[:UndotreeHide<CR>:Telescope file_browser path=%:p:h<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fc', [[:UndotreeHide<CR>:Telescope colorscheme<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', [[:UndotreeHide<CR>:Telescope find_files<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fg', [[:UndotreeHide<CR>:Telescope live_grep<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fh', [[:UndotreeHide<CR>:Telescope help_tags<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ha', [[:HopAnywhere<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>hl', [[:HopAnywhereCurrentLine<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sg', [[:%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>]], { noremap = true })
vim.keymap.set('n', '<leader>sl', [[:.s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>]], { noremap = true })
vim.keymap.set('n', '<leader>tg', [[:lua ToggleLazyGit()<CR>]], { noremap = true, silent = true })

-- Key Maps
vim.keymap.set('n', 'N', [[Nzz]], { noremap = true, silent = true })
vim.keymap.set('n', 'n', [[nzz]], { noremap = true, silent = true })
vim.keymap.set('n', 'q:', [[<nop>]], { noremap = true, silent = true })

-- Miscellaneous Maps
if vim.g.neovide == true then
    vim.keymap.set('n', '<F11>', [[:let g:neovide_fullscreen = !g:neovide_fullscreen<CR>]], { noremap = true, silent = true })
end
