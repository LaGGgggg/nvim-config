vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        'javascript',
        'typescript',
        'vue',
        'css',
        'html',
        'python',
        'cpp',
        'lua',
        'json',
        'yaml',
        'dockerfile',
        'rust',
        'markdown',
    },
    callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
    end,
})
