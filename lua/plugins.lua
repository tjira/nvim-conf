return require('packer').startup({function(use)
    -- Autopairs
    use { 'windwp/nvim-autopairs', config = function()
        require("nvim-autopairs").setup{}
    end}

    -- Bufferline
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons', config = function()
        require('bufferline').setup{
            options = {
                separator_style = 'slant',
                show_buffer_close_icons = false,
                show_close_icon = false
            }
        }
    end}

    -- Comment
    use { 'terrortylor/nvim-comment', config = function()
        require('nvim_comment').setup{}
    end}

    -- Hop
    use { 'phaazon/hop.nvim', config = function()
        require('hop').setup{}
    end}

    -- LSP Config
    use { 'neovim/nvim-lspconfig', requires = { 'hrsh7th/nvim-cmp', 'L3MON4D3/LuaSnip', 'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip' }, config = function()
        local cmp = require('cmp')
        cmp.setup{
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end
            },
            window = {
              completion = cmp.config.window.bordered()
            },
            mapping = cmp.mapping.preset.insert{
                ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
                ['<Down>'] = cmp.mapping.select_next_item(select_opts),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<ESC>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            },
            sources = cmp.config.sources{
                { name = 'nvim_lsp', keyword_length = 3 },
                { name = 'luasnip', keyword_length = 3 }
            }
        }
        require('lspconfig')['pyright'].setup{
            capabilities = require('cmp_nvim_lsp').default_capabilities()
        }
        require('lspconfig')['clangd'].setup{
            capabilities = require('cmp_nvim_lsp').default_capabilities()
        }
    end}

    -- Lualine
    use { 'nvim-lualine/lualine.nvim', requires = 'nvim-tree/nvim-web-devicons', config = function()
        require('lualine').setup{
            options = {
                theme = 'onedark'
            }
        }
    end}

    -- Noice
    use { 'folke/noice.nvim', requires = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' }, config = function()
        require('noice').setup{
            messages = {
                view_warn = false
            }
        }
    end}

    -- Onedark
    use { 'navarasu/onedark.nvim', config = function()
        require('onedark').setup{
            style = 'deep',
            diagnostics = {
                darker = true,
                undercurl = true,
                background = true
            }
        }
        require('onedark').load()
    end}

    -- Surround
    use { 'kylechui/nvim-surround', config = function()
        require('nvim-surround').setup{}
    end}

    --Telescope
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-telescope/telescope-file-browser.nvim', 'nvim-lua/plenary.nvim' }, config = function()
        require('telescope').setup{
            defaults = {
                mappings = {
                    i = {
                        ['<ESC>'] = 'close'
                    }
                }
            }
        }
        require("telescope").load_extension("file_browser")
    end}

    -- Toggleterm
    use { 'akinsho/toggleterm.nvim', config = function()
        require('toggleterm').setup{
            direction = 'horizontal',
            open_mapping = [[<F1>]]
        }
    end}

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = function() require('nvim-treesitter.install').update({ with_sync = true })() end, config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { 'bash', 'c', 'cpp', 'help', 'lua', 'markdown', 'markdown_inline', 'python', 'regex', 'vim' },
            sync_install = false,
            highlight = {
                additional_vim_regex_highlighting = false,
                enable = true
            }
        }
    end}

    -- Packer
    use 'wbthomason/packer.nvim'
end,
config = {
    display = {
        open_fn = require('packer.util').float,
        keybindings = false
    }
}})
