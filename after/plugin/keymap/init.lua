local Remap = require("izzy.remap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<C-f>", ":NvimTreeToggle<CR>")
nnoremap("<C-t>", ":NvimTreeFindFile<CR>")

nnoremap("<M-left>", ":vertical resize -3<CR>")
nnoremap("<M-right>", ":vertical resize +3<CR>")
nnoremap("<M-up>", ":resize -3<CR>")
nnoremap("<M-down>", ":resize +3<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("Y", "yg$")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("<C-h>", ":BufferPrevious<CR>")
nnoremap("<C-l>", ":BufferNext<CR>")
nnoremap("<M-h>", ":BufferMovePrevious<CR>")
nnoremap("<M-l>", ":BufferMoveNext<CR>")

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

vnoremap("<leader>d", "\"_d")

nnoremap("Q", "<nop>")
nnoremap("<leader>F", function()
  vim.lsp.buf.format()
end)

nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

nnoremap("<leader>cg", "<cmd>!git db get %<CR>")
nnoremap("<leader>cp", "<cmd>!git db put %<CR>")
nnoremap("<leader>cfp", "<cmd>!git db put -f %<CR>")
nnoremap("<leader>cfg", "<cmd>!git db get -f %<CR>")
nnoremap("<leader>cs", "<cmd>!git db status %<CR>")

nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

nnoremap('<C-i>', '<cmd>lua vim.lsp.buf.code_action()<CR>')

-- new
nnoremap("<leader>U", "<cmd>e!<CR>")
nnoremap("<C-s>", "<cmd>w<CR>")
nnoremap("<C-c>", "q:")
nnoremap("<C-q>", ":q<CR>")
nnoremap("<C-x>", ":BufferClose<CR>")
