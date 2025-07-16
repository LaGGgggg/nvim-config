vim.g.colors_name = 'alabaster_by_lagggggg'

colors = {
  background = '#1B1C1F',
  normal = '#E9ECEF',
  comment = '#FFC66E',
  string = '#6AAB73',
  constant = '#C77DBB',
  definition = '#57AAF7',
}

-- Diagnostic
vim.api.nvim_set_hl(0, 'DiagnosticError', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { link = 'Normal' })

-- Code
vim.api.nvim_set_hl(0, 'Normal', { fg = colors.normal, bg = colors.background })
vim.api.nvim_set_hl(0, 'Comment', { fg = colors.comment })
vim.api.nvim_set_hl(0, 'String', { fg = colors.string })
vim.api.nvim_set_hl(0, 'Constant', { fg = colors.constant })
vim.api.nvim_set_hl(0, 'Function', { fg = colors.definition })
vim.api.nvim_set_hl(0, 'Statement', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@variable', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@variable.builtin', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@string.regexp', { link = 'String' })
vim.api.nvim_set_hl(0, '@string.special', { link = 'String' })
vim.api.nvim_set_hl(0, '@string.escape', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@constant', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@constant.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@function', { link = 'Function' })
vim.api.nvim_set_hl(0, '@function.builtin', { link = 'Constant' })
vim.api.nvim_set_hl(0, '@function.call', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@function.method', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@function.method.call', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@type.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@module.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@constructor', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@property', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@tag', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@punctuation.special', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@markup.strong', { bold = true })
vim.api.nvim_set_hl(0, '@markup.heading', { link = '@markup.strong' })
