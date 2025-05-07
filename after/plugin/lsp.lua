local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

local lsp = lsp_zero.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- lsp.configure('angularls', {
--   root_dir = require('lspconfig').util.root_pattern('angular.json', 'package.json', '.git'),
-- })

cmp.setup.filetype({ "sql", "plsql" }, {
  sources = {
    { name = "vim-dadbod-completion" },
    { name = "buffer" },
  },
})

lsp.ensure_installed({
  'rust_analyzer',
  'clangd',
  'tailwindcss',
  'angularls',
  'ts_ls'
})

lsp.nvim_workspace()

lsp.setup()
