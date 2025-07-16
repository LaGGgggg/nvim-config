-- Creating
vim.keymap.set('n', '<A-r>', '<C-w>v')
vim.keymap.set('n', '<A-d>', '<C-w>s<C-w>j')

-- Deleting
vim.keymap.set('n', '<A-c>', '<C-w>c')
vim.keymap.set('n', '<A-C>', '<C-w>o')

-- Sizing
vim.keymap.set('n', '<A-C-=>', '4<C-w>=')
vim.keymap.set('n', '<A-C-j>', '4<C-w>+')
vim.keymap.set('n', '<A-C-k>', '4<C-w>-')
vim.keymap.set('n', '<A-C-h>', '4<C-w>>')
vim.keymap.set('n', '<A-C-l>', '4<C-w><')

-- Moving
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-j>', '<C-w>k')
vim.keymap.set('n', '<A-k>', '<C-w>j')
