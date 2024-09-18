vim.g.mapleader = " "

-- NETRW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move whole lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
