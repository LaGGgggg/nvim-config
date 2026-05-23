return {
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()

            local telescope_actions = require('telescope.actions')

            require('telescope').setup({
                defaults = {
                    mappings = {
                        i = {
                            ['<A-j>'] = telescope_actions.move_selection_previous,
                            ['<A-k>'] = telescope_actions.move_selection_next,
                            ['<A-w>'] = telescope_actions.close,
                        },
                        n = {
                            ['j'] = telescope_actions.move_selection_previous,
                            ['k'] = telescope_actions.move_selection_next,
                            ['gg'] = telescope_actions.move_to_bottom,
                            ['G'] = telescope_actions.move_to_top,
                            ['<A-w>'] = telescope_actions.close,
                        },
                    },
                },
            })

            require('telescope').load_extension('fzf')
        end,
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        },
        lazy = false,
        config = function()
            require('neo-tree').setup({
                filesystem = {
                    window = {
                        mappings = require('config.keymaps.neo_tree').window_mappings,
                    },
                },
            })
        end,
    },
    {
        'lukas-reineke/virt-column.nvim',
        opts = { virtcolumn = '101' },
    },
    {
        'okuuva/auto-save.nvim',
        version = '*',
        event = { 'InsertLeave', 'TextChanged' },
        debounce_delay = 2000,
    },
        opts = {
            condition = function(buf)

                local included_filetypes = {
                    'javascript',
                    'typescript',
                    'vue',
                    'css',
                    'html',
                    'python',
                    'lua',
                    'cpp',
                }

                return vim.tbl_contains(included_filetypes, vim.fn.getbufvar(buf, '&filetype'))
            end,
        },
    },
}
