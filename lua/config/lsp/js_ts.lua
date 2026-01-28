vim.lsp.config('ts_ls', {
    filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
    on_attach = function()
        require('config.keymaps.lsp')()
    end,
})

vim.lsp.enable('ts_ls')

vim.lsp.config('vue_ls', {
    filetypes = { 'vue' },
    on_attach = function()
        require('config.keymaps.lsp')()
    end,
})

vim.lsp.enable('vue_ls')
