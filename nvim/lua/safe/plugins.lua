require "dep" {
    {
        'nvim-telescope/telescope.nvim',
        requires= {
            {
                'nvim-telescope/telescope-fzf-native.nvim', 
                config = function()
                    os.execute('cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release' +
                    '&& cmake --build build --config Release' + 
                    '&& cmake --install build --prefix build')
                end
            },
            "nvim-lua/plenary.nvim"
        }
    },
    {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            vim.cmd('TSUpdate')	
        end
    },
    {
        'ThePrimeagen/harpoon',
        requires = 'nvim-lua/plenary.nvim'
    },
    {
        'mbbill/undotree'
    },
    {
        'tpope/vim-fugitive'
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        requires = {'neovim/nvim-lspconfig', 'williamboman/mason.nvim', 
        'williamboman/mason-lspconfig.nvim', 'hrsh7th/nvim-cmp', 
        'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 
        'saadparwaiz1/cmp_luasnip', 'hrsh7th/cmp-nvim-lua', 'L3MON4D3/LuaSnip', 
        'rafamadriz/friendly-snippets'}
    },
    {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons"
    },
    {
        'mfussenegger/nvim-dap'
    },
    {
        'm4xshen/smartcolumn.nvim',
    },
    {
        'sudormrfbin/cheatsheet.nvim',
        requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/popup.nvim', 
        'nvim-lua/plenary.nvim'}
    },
    {
        'm-demare/hlargs.nvim',
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    {
        'm4xshen/autoclose.nvim'
    },
    {
        'mrjones2014/nvim-ts-rainbow',
        requires = 'nvim-treesitter/nvim-treesitter'
    }
}
