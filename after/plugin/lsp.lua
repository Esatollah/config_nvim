local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr}
  local bind = vim.keymap.set

  bind('n', '<leader>vrr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  -- more keybindings...
end)

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
  'clangd',
  'tailwindcss',
})


-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
