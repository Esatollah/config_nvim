vim.opt.guicursor = ""
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 100
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.opt.colorcolumn = '120'

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
