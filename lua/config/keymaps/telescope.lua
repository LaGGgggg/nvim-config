local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', telescope_builtin.find_files)
vim.keymap.set('n', '<leader>g', telescope_builtin.live_grep)
vim.keymap.set('n', '<leader>b', telescope_builtin.buffers)
vim.keymap.set('n', '<leader>h', telescope_builtin.oldfiles)
vim.keymap.set('n', 'Tr', telescope_builtin.registers)
vim.keymap.set('n', 'Tm', telescope_builtin.marks)
vim.keymap.set('n', 'Tc', telescope_builtin.autocommands)
