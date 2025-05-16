return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'folke/tokyonight.nvim'
  use 'cocopon/iceberg.vim'
  use 'Mofiqul/vscode.nvim'
  use { "ellisonleao/gruvbox.nvim" }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use 'ThePrimeagen/harpoon'

  use{ 'neovim/nvim-lspconfig' }         -- Required

  use{ 'hrsh7th/nvim-cmp' }     -- Required
  use{ 'hrsh7th/cmp-nvim-lsp' } -- Required
  use{ 'hrsh7th/cmp-buffer' }   -- Optional
  use{ 'hrsh7th/cmp-path' }     -- Optional
  use{ 'saadparwaiz1/cmp_luasnip' } -- Optional
  use{ 'hrsh7th/cmp-nvim-lua' } -- Optional
  use { "zbirenbaum/copilot.lua" }
  use 'MunifTanjim/nui.nvim'
  use 'stevearc/dressing.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'

  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    config = function()
      require('avante').setup()
    end
  }

  use{ 'L3MON4D3/LuaSnip' }         -- Required
  use{ 'rafamadriz/friendly-snippets' }-- Optional

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  --use 'RRethy/vim-illuminate'

  use 'lewis6991/gitsigns.nvim'
  -- autotag for html
  --
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use("petertriho/nvim-scrollbar")

  use("tpope/vim-dadbod")
  use("kristijanhusak/vim-dadbod-completion")
  use("kristijanhusak/vim-dadbod-ui")

  use 'mfussenegger/nvim-dap'

  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'romgrk/barbar.nvim'

  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
  })

  use 'jpalardy/vim-slime'
end
)
