vim.g.mapleader = " "

-- NETRW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move whole lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "LSP Code Action" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { noremap = true, silent = true })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true })
-- Diagnostic navigation (default keybindings: ]d [d)
vim.keymap.set('n', '<leader>gn', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Go to next diagnostic" })
vim.keymap.set('n', '<leader>gp', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Go to previous diagnostic" })

