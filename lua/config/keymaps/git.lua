vim.keymap.set('n', 'Go', function()

    vim.cmd.tabnew()
    vim.cmd.terminal()
    vim.cmd.startinsert()
    vim.fn.chansend(vim.bo.channel, 'lazygit\r')

    -- Mode changing
    vim.keymap.del('t', 'jj', { buffer = true })
    vim.keymap.set('t', '<C-j><C-j>', '<C-\\><C-n>', { buffer = true })

    -- Tabs moving
    vim.keymap.set('t', '<A-H>', '<C-\\><C-n>:tabprevious<CR>', { buffer = true })
    vim.keymap.set('t', '<A-L>', '<C-\\><C-n>:tabnext<CR>', { buffer = true })

    -- Text deleting
    vim.keymap.set('t', '<c-x>', '<BS>', { buffer = true })

    -- Vim's search
    vim.keymap.set('t', '<c-/>', '<C-\\><C-n>/', { buffer = true })
end)
