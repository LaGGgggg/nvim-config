-- Disable default auto-yarns
vim.keymap.set({'n', 'v'}, 'dd', '"_dd')
vim.keymap.set({'n', 'v'}, 'x', '"_x')

-- Add manual line-delete yarn
vim.keymap.set({'n', 'v'}, 'dy', 'dd')

-- Default registers shortcut
vim.keymap.set({'n', 'v'}, ';', '"')

-- System clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P')
