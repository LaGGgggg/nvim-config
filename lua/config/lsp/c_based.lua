vim.lsp.config('clangd', {
    on_attach = function()
        require('config.keymaps.lsp')()
    end,
})

vim.lsp.enable('clangd')
