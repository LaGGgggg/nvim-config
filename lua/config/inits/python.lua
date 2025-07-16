vim.api.nvim_create_autocmd('FileType', {
    pattern = 'python',
    callback = function()
        vim.api.nvim_buf_set_option(0, 'tabstop', 4)
        vim.api.nvim_buf_set_option(0, 'softtabstop', 4)
        vim.api.nvim_buf_set_option(0, 'shiftwidth', 4)
    end,
})
