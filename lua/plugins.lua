return require('packer').startup({function(use)
    -- Packer
    use { 'wbthomason/packer.nvim' }

    -- Autopairs
    use { 'windwp/nvim-autopairs' }

    -- Bufferline
    use { 'akinsho/bufferline.nvim', requires = { 'nvim-tree/nvim-web-devicons' } }

    -- CMP
    use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip' } }

    -- Comment
    use { 'terrortylor/nvim-comment' }

    -- Hop
    use { 'phaazon/hop.nvim' }

    -- Kanagawa
    use { 'rebelot/kanagawa.nvim' }

    -- LSP Config
    use { 'neovim/nvim-lspconfig' }

    -- Lualine
    use { 'nvim-lualine/lualine.nvim', requires = 'nvim-tree/nvim-web-devicons' }
    
    -- Luasnip
    use { 'L3MON4D3/LuaSnip' }

    -- Nightfox
    use { 'EdenEast/nightfox.nvim' }

    -- Noice
    use { 'folke/noice.nvim', requires = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' } }

    -- Surround
    use { 'kylechui/nvim-surround' }

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- Telescope File Browser
    use { 'nvim-telescope/telescope-file-browser.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- Toggleterm
    use { 'akinsho/toggleterm.nvim' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = function()
        require('nvim-treesitter.install').update({ with_sync = true })()
    end}
    
    -- Undotree
    use { 'mbbill/undotree' }
end,
config = {
    display = {
        open_fn = require('packer.util').float,
        keybindings = false
    }
}})
