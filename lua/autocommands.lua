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
    pattern = { "tex" },
    callback = function(event)
        vim.keymap.set('n', '<F10>', [[:VimtexCompile<CR>]], { buffer = 0, noremap = true, silent = true })
    end
})
