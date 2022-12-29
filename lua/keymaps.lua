local terminal  = require('toggleterm.terminal').Terminal

function ToggleLazyGit()
  terminal:new({ cmd = "lazygit", dir = "git_dir", direction = "float", hidden = true }):toggle()
end

vim.keymap.set('n', '<ESC>', [[<ESC>:noh<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<F2>', [[:UndotreeToggle<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<F6>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="make %:t:r"<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<A-Down>', [[:m+1<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', [[:m-2<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-D>', [[<C-D>zz]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-U>', [[<C-U>zz]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bc', [[:enew<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bd', [[:bdelete<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bn', [[:BufferLineCycleNext<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bp', [[:BufferLineCyclePrev<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fb', [[:UndotreeHide<CR>:Telescope file_browser path=%:p:h<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', [[:UndotreeHide<CR>:Telescope find_files<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fg', [[:UndotreeHide<CR>:Telescope live_grep<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fh', [[:UndotreeHide<CR>:Telescope help_tags<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ha', [[:HopAnywhere<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>hl', [[:HopAnywhereCurrentLine<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sg', [[:%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>]], { noremap = true })
vim.keymap.set('n', '<leader>sl', [[:.s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>]], { noremap = true })
vim.keymap.set('n', '<leader>tg', [[:lua ToggleLazyGit()<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vc', [[:e $XDG_CONFIG_HOME/nvim/init.lua<CR>:cd %:p:h<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true })
vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true })

if vim.g.neovide == true then
    vim.keymap.set('n', '<F11>', [[:let g:neovide_fullscreen = !g:neovide_fullscreen<CR>]], { noremap = true, silent = true })
end
