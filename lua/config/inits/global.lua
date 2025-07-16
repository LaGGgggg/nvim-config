vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()

        -- cd to opened directory
        vim.cmd('cd %:p:h')

        -- Colorscheme
        vim.cmd.colorscheme('alabaster_by_lagggggg')
    end,
})

-- Move to the mark "q" when a new buffer is created
vim.api.nvim_create_autocmd('BufReadPost', {
    callback = function()

        local filetype = vim.bo.filetype

        if filetype ~= 'TelescopePrompt' and  filetype ~= 'NvimTree' then

            local mark_position = vim.api.nvim_buf_get_mark(0, 'q')

            if mark_position[1] ~= 0 then
                -- 1 - shift to move exactly where quit
                vim.api.nvim_win_set_cursor(0, {
                    mark_position[1], mark_position[2] == 0 and 0 or mark_position[2] - 1
                })
            end
        end
    end,
})
