local terminal  = require('toggleterm.terminal').Terminal

function ToggleLazyGit()
  terminal:new({ cmd = "lazygit", dir = "git_dir", direction = "float", hidden = true }):toggle()
end

vim.keymap.set('i', '<F1>', [[:UndotreeToggle<CR>]], { silent = true })
vim.keymap.set('n', '<F2>', [[:UndotreeToggle<CR>]], { silent = true })
vim.keymap.set('n', '<A-Down>', [[:m+1<CR>]], { silent = true })
vim.keymap.set('n', '<A-Up>', [[:m-2<CR>]], { silent = true })
vim.keymap.set('n', '<C-Left>', [[:BufferLineCyclePrev<CR>]], { silent = true })
vim.keymap.set('n', '<C-Right>', [[:BufferLineCycleNext<CR>]], { silent = true })
vim.keymap.set('n', '<leader>bd', [[:bdelete<CR>]], { silent = true })
vim.keymap.set('n', '<leader>bn', [[:enew<CR>]], { silent = true })
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { silent = true })
vim.keymap.set('n', '<leader>fb', [[:UndotreeHide<CR>:Telescope file_browser path=%:p:h<CR>]], { silent = true })
vim.keymap.set('n', '<leader>ff', [[:UndotreeHide<CR>:Telescope find_files<CR>]], { silent = true })
vim.keymap.set('n', '<leader>fg', [[:UndotreeHide<CR>:Telescope live_grep<CR>]], { silent = true })
vim.keymap.set('n', '<leader>fh', [[:UndotreeHide<CR>:Telescope help_tags<CR>]], { silent = true })
vim.keymap.set('n', '<leader>ha', [[:HopAnywhere<CR>]], { silent = true })
vim.keymap.set('n', '<leader>hl', [[:HopAnywhereCurrentLine<CR>]], { silent = true })
vim.keymap.set('n', '<leader>nh', [[:noh<CR>]], { silent = true })
vim.keymap.set('n', '<leader>sg', [[:%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>]])
vim.keymap.set('n', '<leader>tg', [[:lua ToggleLazyGit()<CR>]], { silent = true })
vim.keymap.set('n', '<leader>vc', [[:e $XDG_CONFIG_HOME/nvim/init.lua<CR>]], { silent = true })

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = { "python" },
    callback = function(event)
        vim.keymap.set('n', '<F5>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="python %"<CR>]], { buffer = 0, silent = true })
    end
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = { "cpp" },
    callback = function(event)
        vim.keymap.set('n', '<F5>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="./%:t:r"<CR>]], { buffer = 0, silent = true })
    end
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function(event)
        if vim.fn.findfile('makefile') == 'makefile' then
            if vim.fn.has('unix') == 1 then
                vim.keymap.set('n', '<F6>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="make %:t:r"<CR>]], { silent = true })
            else
                vim.keymap.set('n', '<F6>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="mingw32-make %:t:r"<CR>]], { silent = true })
            end
        end
    end
})

if vim.g.neovide == true then
    vim.keymap.set('n', '<F11>', [[:let g:neovide_fullscreen = !g:neovide_fullscreen<CR>]], { silent = true })
end
