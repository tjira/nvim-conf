require("nvim-autopairs").setup{}

require('bufferline').setup{
    options = {
        separator_style = 'slant',
        show_buffer_close_icons = false,
        show_close_icon = false
    }
}

require('nvim_comment').setup{}

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

require('hop').setup{}

require('lspconfig')['pyright'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

require('lspconfig')['clangd'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

require('lualine').setup{
    options = {
        theme = 'onedark'
    }
}

require('noice').setup{}

require('onedark').setup{
    style = 'deep',
    diagnostics = {
        darker = true,
        undercurl = true,
        background = true
    }
}

require('nvim-surround').setup{}

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<ESC>'] = 'close'
            }
        }
    }
}

require('toggleterm').setup{
    direction = 'horizontal',
    open_mapping = [[<F1>]]
}

require('nvim-treesitter.configs').setup {
    ensure_installed = { 'bash', 'c', 'cpp', 'help', 'lua', 'markdown', 'markdown_inline', 'python', 'regex', 'vim' },
    sync_install = false,
    highlight = {
        additional_vim_regex_highlighting = false,
        enable = true
    }
}

require("telescope").load_extension("file_browser")
require('onedark').load()
