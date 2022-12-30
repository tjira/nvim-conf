local terminal  = require('toggleterm.terminal').Terminal

function MoveDown()
    if vim.api.nvim_win_get_cursor(0)[1] < vim.api.nvim_buf_line_count(0) then
        vim.cmd(':m+1<CR>')
    end
end

function MoveUp()
    if vim.api.nvim_win_get_cursor(0)[1] > 1 then
        vim.cmd(':m-2<CR>')
    end
end

function ToggleLazyGit()
  terminal:new({ cmd = 'lazygit', dir = "git_dir", direction = 'float', hidden = true }):toggle()
end
