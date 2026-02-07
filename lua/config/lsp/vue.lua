vim.lsp.config('vue_ls', {
    filetypes = { 'vue' },
    on_attach = function()
        require('config.keymaps.lsp')()
    end,
})

vim.lsp.enable('vue_ls')
