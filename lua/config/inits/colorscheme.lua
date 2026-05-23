local COLORS = require('colors.alabaster_by_lagggggg.colors')

vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        vim.cmd.colorscheme('alabaster_by_lagggggg')
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'markdown',
    callback = function()

        vim.fn.matchadd('markdown_extended.priority', '!!')
        vim.fn.matchadd('markdown_extended.date', ' \\d\\d ')
        vim.fn.matchadd('markdown_extended.priority_date', '!!\\d\\d ')

        vim.api.nvim_set_hl(0, '@markup.heading.1.markdown', { bold = false })
        vim.api.nvim_set_hl(0, '@markup.heading.2.markdown', { link = '@markup.heading.1.markdown' })
        vim.api.nvim_set_hl(0, '@markup.heading.3.markdown', { link = '@markup.heading.1.markdown' })
        vim.api.nvim_set_hl(0, '@markup.heading.4.markdown', { link = '@markup.heading.1.markdown' })
        vim.api.nvim_set_hl(0, '@markup.heading.5.markdown', { link = '@markup.heading.1.markdown' })
        vim.api.nvim_set_hl(0, '@markup.heading.6.markdown', { link = '@markup.heading.1.markdown' })
        vim.api.nvim_set_hl(
            0, 'markdown_extended.priority', { bold = true, italic = true, fg = COLORS.comment }
        )
        vim.api.nvim_set_hl(
            0, 'markdown_extended.date', { bold = true, fg = COLORS.comment }
        )
        vim.api.nvim_set_hl(
            0, 'markdown_extended.priority_date', { link = 'markdown_extended.priority' }
        )
    end,
})
