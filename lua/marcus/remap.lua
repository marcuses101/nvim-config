vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)

vim.keymap.set("n", "Y", "Vy<Esc>")
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "16jzz")
vim.keymap.set("n", "<C-u>", "16kzz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "[q", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "]q", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

vim.keymap.set('n', "<leader>lr", "<cmd>LspRestart<CR>")
