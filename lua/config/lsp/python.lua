vim.lsp.config('ruff', {
    on_attach = function(client, bufnr)
        vim.diagnostic.config({
            virtual_text = {
                format = function(diagnostic)
                    return string.format('%s (%s)', diagnostic.message, diagnostic.code)
                end,
            },
        })
    end,
})

vim.lsp.enable('ruff')

local function get_python_path(workspace)

    local path = require('lspconfig/util').path

    if vim.env.VIRTUAL_ENV then
        return path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
    end

    for _, pattern in ipairs({'*', '.*'}) do

        local match = vim.fn.glob(path.join(workspace, pattern, 'pyvenv.cfg'))

        if match ~= '' then
            return path.join(path.dirname(match), 'Scripts', 'python')
        end
    end

    return exepath('python3') or exepath('python') or 'python'
end

vim.lsp.config('pyright', {
    on_attach = function()
        require('config.keymaps.lsp')()
    end,
    before_init = function(_, config)
        config.settings.python.pythonPath = get_python_path(config.root_dir)
    end,
    settings = {
        pyright = {
            disableOrganizeImports = true,
        },
        python = {
            analysis = {
                ignore = { '*' },
            },
        },
    },
})

vim.lsp.enable('pyright')
