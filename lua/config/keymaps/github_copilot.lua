local M = {}

function M.global()
    vim.keymap.set('i', '<leader>ct', require('copilot.suggestion').toggle_auto_trigger)
    vim.keymap.set('i', '<leader>cd', ':Copilot disable<CR>')
end

M.suggestion_mapping = {
    accept = '<leader>a',
    next = '<leader>ck',
    prev = '<leader>cj',
    dismiss = '<esc>',
}

return M
