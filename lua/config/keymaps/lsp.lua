return function()

    -- Gotos
    vim.keymap.set('n', 'Ld', vim.lsp.buf.definition, { buffer = true })
    vim.keymap.set('n', 'Li', vim.lsp.buf.implementation, { buffer = true })
    vim.keymap.set('n', 'LD', vim.lsp.buf.declaration, { buffer = true })

    -- Infos
    vim.keymap.set('n', 'Lh', vim.lsp.buf.hover, { buffer = true })
    vim.keymap.set('n', 'LH', vim.lsp.buf.signature_help, { buffer = true })

    -- Find/rename
    vim.keymap.set('n', 'Lf', vim.lsp.buf.references, { buffer = true })
    vim.keymap.set('n', 'Lr', vim.lsp.buf.rename, { buffer = true })

    -- Code actions
    vim.keymap.set('n', 'La', vim.lsp.buf.code_action, { buffer = true })

    -- Diagnostics
    vim.keymap.set('n', 'Le', vim.diagnostic.open_float, { buffer = true })
    vim.keymap.set('n', 'Ln', vim.diagnostic.goto_next, { buffer = true })
    vim.keymap.set('n', 'Lb', vim.diagnostic.goto_prev, { buffer = true })

    -- Situational
    vim.keymap.set('n', 'LR', vim.diagnostic.setloclist, { buffer = true })
    vim.keymap.set('n', 'LF', function()
        vim.lsp.buf.format({ async = true })
    end)
end
