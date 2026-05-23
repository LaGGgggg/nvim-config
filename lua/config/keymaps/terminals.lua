local M = {}

function M.global()

    -- Opening
    vim.keymap.set(
        'n',
        '<leader>t',
        function ()
            vim.cmd.tabnew()
            vim.cmd.terminal()
            vim.cmd.startinsert()
        end
    )
    vim.keymap.set('n', '<leader>T', ':terminal<CR>i')

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

    -- Execute script
    vim.keymap.set('t', '<A-r>v', '_scripts/activate_venv.ps1<CR>')  -- activate venv
    vim.keymap.set('t', '<A-r>r', '_scripts/run_server.ps1<CR>')  -- run server
    vim.keymap.set('t', '<A-r>m', '_scripts/make_migrations.ps1<CR>')  -- make migrations
    vim.keymap.set('t', '<A-r>M', '_scripts/migrate.ps1<CR>')  -- migrate
    vim.keymap.set('t', '<A-r>t', '_scripts/test.ps1<CR>')  -- test
end

function M.buffer_local()
    -- Mode changing
    vim.keymap.set('t', 'jj', '<C-\\><C-n>', { buffer = true })
end

return M
