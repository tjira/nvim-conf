vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function(event)
        if next(vim.fn.argv()) == nil or vim.fn.isdirectory(vim.api.nvim_buf_get_name(0)) == 1 then
            if vim.fn.isdirectory(vim.api.nvim_buf_get_name(0)) == 1 then
                vim.api.nvim_set_current_dir(vim.api.nvim_buf_get_name(0))
                vim.api.nvim_buf_delete(0, {})
            end
            vim.api.nvim_command([[:lua require('telescope').extensions.file_browser.file_browser()]])
        end
    end
})

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    pattern = { "cpp" },
    callback = function(event)
        vim.keymap.set('n', '<F5>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="%:p:r"<CR>]], { buffer = 0, noremap = true, silent = true })
    end
})

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    pattern = { "markdown" },
    callback = function(event)
        vim.cmd('setlocal spell')
    end
})

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    pattern = { "python" },
    callback = function(event)
        vim.keymap.set('n', '<F5>', [[:w<CR>:TermExec cmd="clear" open=0<CR>:TermExec cmd="python %"<CR>]], { buffer = 0, noremap = true, silent = true })
    end
})
