-- Fold/unfolding line
vim.keymap.set({'n', 'v'}, 'ff', 'zf')
vim.keymap.set({'n', 'v'}, 'fu', 'zo')

-- Fold/unfolding all
vim.keymap.set({'n', 'v'}, 'fF', 'zm')
vim.keymap.set({'n', 'v'}, 'fU', 'zr')

-- Toggling
vim.keymap.set({'n', 'v'}, 'ft', 'za')

-- Deleting
vim.keymap.set({'n', 'v'}, 'fd', 'zd')

-- Moving
vim.keymap.set({'n', 'v'}, 'fk', 'zj')
vim.keymap.set({'n', 'v'}, 'fj', 'zk')
