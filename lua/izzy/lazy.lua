-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specifications
local plugins = {
  'nvim-lua/plenary.nvim',

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Colorschemes
  'folke/tokyonight.nvim',
  'cocopon/iceberg.vim',
  'Mofiqul/vscode.nvim',
  'ellisonleao/gruvbox.nvim',

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },

  -- Completion plugins
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-vsnip',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lua',

  -- Copilot and AI
  {
    "zbirenbaum/copilot.lua",
  },
  'MunifTanjim/nui.nvim',
  'stevearc/dressing.nvim',
  'MeanderingProgrammer/render-markdown.nvim',

  {
    'yetone/avante.nvim',
    branch = 'main',
    build = 'make',
    config = function()
      require('avante').setup()
    end
  },

  -- Snippets
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }
  },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  },

  'lewis6991/gitsigns.nvim',

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  "petertriho/nvim-scrollbar",

  -- Database tools
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-completion",
  "kristijanhusak/vim-dadbod-ui",

  -- Debugging
  'mfussenegger/nvim-dap',

  -- UI
  'nvim-tree/nvim-web-devicons',
  'romgrk/barbar.nvim',

  'jpalardy/vim-slime',
}

-- Setup lazy.nvim
require("lazy").setup(plugins, {
  -- Configuration options
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
