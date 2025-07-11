local Keymap = require'izzy.remap'

local nnoremap = Keymap.nnoremap

nnoremap("<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
nnoremap("<leader>gP", "<cmd>Gitsigns diffthis<CR>")
nnoremap("<leader>gu", "<cmd>Gitsigns reset_hunk<CR>")
nnoremap("<leader>gU", "<cmd>Gitsigns reset_buffer<CR>")
nnoremap("<C-M>", "<cmd>Gitsigns next_hunk<CR>")
nnoremap("<C-N>", "<cmd>Gitsigns prev_hunk<CR>")
