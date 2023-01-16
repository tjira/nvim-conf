vim.cmd('colorscheme kanagawa')

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
        ['<C-S-Up>'] = require('cmp').mapping.scroll_docs(-4),
        ['<C-S-Down>'] = require('cmp').mapping.scroll_docs(4),
        ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
        ['<ESC>'] = require('cmp').mapping.abort(),
        ["<Tab>"] = require('cmp').mapping(function(fallback)
            if require('cmp').visible() then
                require('cmp').select_next_item()
            elseif require('luasnip').expand_or_jumpable() then
                require('luasnip').expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ["<S-Tab>"] = require('cmp').mapping(function(fallback)
            if require('cmp').visible() then
                require('cmp').select_prev_item()
            elseif require('luasnip').jumpable(-1) then
                require('luasnip').jump(-1)
            else
                fallback()
            end
          end, { "i", "s" }),
    },
    sources = require('cmp').config.sources{
        {
            name = 'nvim_lsp', 
            keyword_length = 3,
            max_item_count = 10,
            entry_filter = function(entry, ctx)
                if entry:get_kind() == 1 then return false end
                if entry:get_kind() == 15 then return false end
                return true
            end
        },
        {
            name = 'luasnip',
            keyword_length = 3
        }
    }
}

-- Hop
require('hop').setup{}

-- LSP Config Bash
require('lspconfig')['bashls'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- LSP Config C++
require('lspconfig')['clangd'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- LSP Config Python
require('lspconfig')['pyright'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- LSP Config Vimscript
require('lspconfig')['vimls'].setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- Lualine
require('lualine').setup{}

-- Noice
require('noice').setup{}

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
    direction = 'float',
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
