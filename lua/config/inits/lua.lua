vim.api.nvim_create_autocmd('FileType', {
    pattern = 'lua',
    callback = function()
        vim.api.nvim_set_option_value('tabstop', 4, { buf = 0 })
        vim.api.nvim_set_option_value('softtabstop', 4, { buf = 0 })
        vim.api.nvim_set_option_value('shiftwidth', 4, { buf = 0 })
    end,
})
