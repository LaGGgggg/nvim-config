return function()

    -- Gotos
    vim.keymap.set('n', 'Ld', vim.lsp.buf.definition, { buffer = true })
    vim.keymap.set('n', 'Li', vim.lsp.buf.implementation, { buffer = true })
    vim.keymap.set('n', 'LD', vim.lsp.buf.declaration, { buffer = true })

    -- Infos
    vim.keymap.set('n', 'Lh', vim.lsp.buf.hover, { buffer = true })
    vim.keymap.set('n', 'LH', vim.lsp.buf.signature_help, { buffer = true })

    -- Actions
    vim.keymap.set('n', 'Lr', vim.lsp.buf.rename, { buffer = true })
    vim.keymap.set('n', 'Lf', vim.lsp.buf.references, { buffer = true })
    vim.keymap.set('n', 'La', vim.lsp.buf.code_action, { buffer = true })
    vim.keymap.set(
        'n',
        'LI',
        function()
            vim.lsp.buf.code_action({
                apply = true,
                context = {
                    only = { 'source.organizeImports' },
                },
            })
        end,
        { buffer = true }
    )

    -- Diagnostics
    vim.keymap.set('n', 'Le', vim.diagnostic.open_float, { buffer = true })
    vim.keymap.set('n', 'Lj', vim.diagnostic.goto_prev, { buffer = true })
    vim.keymap.set('n', 'Lk', vim.diagnostic.goto_next, { buffer = true })

    -- Situational
    vim.keymap.set('n', 'LR', vim.diagnostic.setloclist, { buffer = true })
    vim.keymap.set('n', 'LF', function()
        vim.lsp.buf.format({ async = true })
    end)
    vim.keymap.set('n', 'LU', ':lua vim.diagnostic.reset(nil, 0)<CR>mq:e %<CR>', { buffer = true })
end
