-- To turn on/off lsp for any languages or frameworks which are supported,
-- just edit the "filetypes" table below.
-- Some supported options: "typescript", "javascript", "javascriptreact",
-- "typescriptreact", "vue"

local lspconfig = require('lspconfig')

lspconfig.volar.setup({
    filetypes = { 'javascript', 'typescript', 'vue' },
    on_attach = function()
        require('config.keymaps.lsp')()
    end,
    init_options = {
        vue = {
            hybridMode = false,
        },
    },
})
