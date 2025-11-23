-- lua/keymap.lua


--
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { silent = true, noremap = true })

--
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})