-- Mode changing
vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', 'i', 'a')
vim.keymap.set('n', 'a', 'i')

-- Quiting
vim.keymap.set('n', '<A-w>', 'mq:q<CR>')
vim.keymap.set('n', '<A-W>', 'mQ:q!<CR>')

-- Moving
vim.keymap.set({'n', 'v', 'o'}, 'j', 'k')
vim.keymap.set({'n', 'v', 'o'}, 'k', 'j')

vim.keymap.set({'n', 'v', 'o'}, 'e', 'b')
vim.keymap.set({'n', 'v', 'o'}, 'b', 'e')
vim.keymap.set({'n', 'v', 'o'}, 'B', 'E')
vim.keymap.set({'n', 'v', 'o'}, 'E', 'B')

vim.keymap.set({'n', 'v', 'o'}, 'de', 'ldb')
vim.keymap.set({'n', 'v', 'o'}, 'dE', 'ldB')

vim.keymap.set({'n', 'v', 'o'}, 'W', 'ge')

vim.keymap.set({'n', 'v', 'o'}, 'ml', '$')
vim.keymap.set({'n', 'v', 'o'}, 'mh', '^')
vim.keymap.set({'n', 'v', 'o'}, 'mH', '0')

vim.keymap.set({'n', 'v'}, '<C-j>', '<C-u>')
vim.keymap.set({'n', 'v'}, '<C-k>', '<C-d>')

vim.keymap.set('n', '<C-h>', '<C-o>')
vim.keymap.set('n', '<C-l>', '<C-i>')

-- New lines
vim.keymap.set('v', 'o', 'O')
vim.keymap.set('v', 'O', 'o')

-- Selecting
vim.keymap.set('n', '<A-v>', 'V')

-- Redo
vim.keymap.set('n', 'U', '<C-r>')

-- Path
vim.keymap.set('n', '<A-p>', ':cd %:p:h<CR>')
vim.keymap.set('n', '<A-P>', ':cd ..<CR>')
vim.keymap.set('n', '<A-s>', ':w<CR>')
vim.keymap.set('n', '<A-S>', ':w | so %<CR>')

-- Macroses
vim.keymap.set('n', '@', 'q')
vim.keymap.set('n', 'q', '@')

-- Misc
vim.keymap.set('n', 'no', ':nohlsearch<CR>')
