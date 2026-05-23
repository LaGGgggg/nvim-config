return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        },
        config = function()

            local cmp = require('cmp')

            cmp.setup({
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert(require('config.keymaps.cmp')),
                sources = cmp.config.sources({
                    { name = 'buffer' },
                }),
            })

            cmp.setup.cmdline('/', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                },
            })
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    { { name = 'path' } },
                    { { name = 'cmdline' } }
                ),
                matching = { disallow_symbol_nonprefix_matching = false },
            })
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter').install({
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
            })
        end,
    },
}
