return {
    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'neovim/nvim-lspconfig',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        },
        config = function()

            local cmp = require('cmp');

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }),
            })

            vim.diagnostic.config({
              virtual_text = true,
            })
        end,
    },
}
