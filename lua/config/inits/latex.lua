vim.api.nvim_create_autocmd('FileType', {

    pattern = { 'tex', 'markdown' },

    callback = function()
        require('config.keymaps.latex')()
    end,
})
