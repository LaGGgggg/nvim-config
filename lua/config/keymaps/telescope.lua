-- Keymaps
local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', telescope_builtin.find_files)
vim.keymap.set('n', '<leader>g', telescope_builtin.live_grep)
