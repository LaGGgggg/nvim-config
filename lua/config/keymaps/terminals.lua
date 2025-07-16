-- Opening
vim.keymap.set('n', '<leader>t', '<C-w>v | :terminal<CR> | i')

-- Mode changing
vim.keymap.set('t', 'jj', '<C-\\><C-n>')

-- Quiting
vim.keymap.set('t', '<A-w>', '<C-\\><C-n> | :q!<CR>')

-- Moving
vim.keymap.set('t', '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set('t', '<A-j>', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<A-k>', '<C-\\><C-n><C-w>j')

-- Arrows
vim.keymap.set('t', '<C-j>', '<Up>')
vim.keymap.set('t', '<C-k>', '<Down>')
vim.keymap.set('t', '<C-h>', '<Left>')
vim.keymap.set('t', '<C-l>', '<Right>')

-- Execute previous
vim.keymap.set('t', '<A-e>', '<Up><CR>')
