-- Autopaird
require("nvim-autopairs").setup{}

-- Bufferline
require('bufferline').setup{
    options = {
        separator_style = 'slant',
        show_buffer_close_icons = true,
        show_close_icon = false
    }
}

-- Comment
require('nvim_comment').setup{}

-- CMP
require('cmp').setup{
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    window = {
      completion = require('cmp').config.window.bordered()
    },
    mapping = require('cmp').mapping.preset.insert{
        ['<Up>'] = require('cmp').mapping.select_prev_item(select_opts),
        ['<Down>'] = require('cmp').mapping.select_next_item(select_opts),
        ['<C-b>'] = require('cmp').mapping.scroll_docs(-4),
        ['<C-f>'] = require('cmp').mapping.scroll_docs(4),
        ['<C-e>'] = require('cmp').mapping.abort(),
        ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
    },
    sources = require('cmp').config.sources{
        { name = 'nvim_lsp', keyword_length = 3 },
        { name = 'luasnip', keyword_length = 3 }
    }
}

-- Hop
require('hop').setup{}

-- LSP Config Bash
-- Linux: npm install -g bash-language-server
if vim.fn.has('unix') == 1 then
    require('lspconfig')['bashls'].setup{
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
end

-- LSP Config C++
-- Linux: sudo apt install clangd
-- Windows: choco install llvm, PATH=mingw64/bin;chocolatey/bin;LLVM/bin
require('lspconfig')['clangd'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- LSP Config Python
-- Linux: npm install -g pyright
if vim.fn.has('unix') == 1 then
    require('lspconfig')['pyright'].setup{
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
end

-- LSP Config Vimscript
-- Linux: npm install -g vim-language-server
if vim.fn.has('unix') == 1 then
    require('lspconfig')['vimls'].setup{
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
end

-- Lualine
require('lualine').setup{
    options = {
        theme = 'onedark'
    }
}

-- Noice
require('noice').setup{}

-- Onedark
require('onedark').setup{
    style = 'deep',
    diagnostics = {
        darker = true,
        undercurl = true,
        background = true
    }
}

-- Surround
require('nvim-surround').setup{}

-- Telescope
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<ESC>'] = 'close'
            }
        }
    }
}

-- Toggleterm
require('toggleterm').setup{
    direction = 'horizontal',
    open_mapping = '<F1>'
}

-- Treesitter
require('nvim-treesitter.configs').setup {
    ensure_installed = { 'bash', 'c', 'cpp', 'help', 'lua', 'markdown', 'markdown_inline', 'python', 'regex', 'vim' },
    sync_install = false,
    highlight = {
        additional_vim_regex_highlighting = false,
        enable = true
    }
}

-- Loading
vim.keymap.set('i', '<F1>', '<nop>', { silent = true })
require("luasnip.loaders.from_snipmate").lazy_load()
require("telescope").load_extension("file_browser")
require('onedark').load()
