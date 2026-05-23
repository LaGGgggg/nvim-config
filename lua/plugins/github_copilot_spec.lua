return {
    {
        'zbirenbaum/copilot.lua',
        config = function()
            require('copilot').setup({
                filetypes = {
                    markdown = true,
                    python = true,

                    javascript = true,
                    typescript = true,
                    vue = true,
                    cpp = true,
                    rust = true,
                    lua = true,
                    nginx = true,
                    sh = true,
                    autohotkey = true,

                    yaml = true,
                    ['*'] = false,
                },
                suggestion = {
                    trigger_on_accept = true,
                    auto_trigger = false,
                    keymap = require('config.keymaps.github_copilot').suggestion_mapping,
                },
            })
        end,
        event = 'InsertEnter',
        build = ':Copilot auth',
    },
}
