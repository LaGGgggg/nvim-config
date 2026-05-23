vim.lsp.config('rust_analyzer', {
    filetypes = { 'rust' },
    on_attach = function(client, bufnr)

        require('config.keymaps.lsp')()

        if client.config.root_dir == nil then
            client.config.settings['rust-analyzer'].linkedProjects = {
                vim.api.nvim_buf_get_name(bufnr),
            }
        end
    end,
})

vim.lsp.enable('rust_analyzer')
