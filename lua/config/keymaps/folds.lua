-- Fold/unfolding
vim.keymap.set({'n', 'v'}, 'ff', 'zf')
vim.keymap.set({'n', 'v'}, 'fu', 'zo')
vim.keymap.set({'n', 'v'}, 'ft', 'za')

-- Fold/unfolding global
vim.keymap.set({'n', 'v'}, 'fF', 'zm')
vim.keymap.set({'n', 'v'}, 'fU', 'zr')

-- Moving
vim.keymap.set({'n', 'v'}, 'fk', 'zj')
vim.keymap.set({'n', 'v'}, 'fj', 'zk')

-- Deleting
vim.keymap.set({'n', 'v'}, 'fd', 'zd')
