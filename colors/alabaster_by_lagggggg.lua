vim.g.colors_name = 'alabaster_by_lagggggg'

local COLORS = require('colors.alabaster_by_lagggggg.colors')

-- Diagnostic
vim.api.nvim_set_hl(0, 'DiagnosticError', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { link = 'Normal' })

-- Code
vim.api.nvim_set_hl(0, 'Normal', { fg = COLORS.normal, bg = COLORS.background })
vim.api.nvim_set_hl(0, 'Comment', { fg = COLORS.comment })
vim.api.nvim_set_hl(0, 'String', { fg = COLORS.string })
vim.api.nvim_set_hl(0, 'Constant', { fg = COLORS.constant })
vim.api.nvim_set_hl(0, 'Function', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'Statement', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@variable', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@variable.builtin', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@attribute.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@string.regexp', { link = 'String' })
vim.api.nvim_set_hl(0, '@string.special', { link = 'String' })
vim.api.nvim_set_hl(0, '@string.escape', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@constant', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@constant.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@function', { link = 'Function' })
vim.api.nvim_set_hl(0, '@function.builtin', { link = 'Constant' })
vim.api.nvim_set_hl(0, '@function.call', { link = 'Normal' })
vim.api.nvim_set_hl(0, '@function.method', { link = 'Function' })
vim.api.nvim_set_hl(0, '@function.method.call', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@type.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@module.builtin', { link = 'Constant' })

vim.api.nvim_set_hl(0, '@constructor', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@property', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@tag', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@punctuation.special', { link = 'Normal' })

vim.api.nvim_set_hl(0, '@markup.strong', { bold = true })
vim.api.nvim_set_hl(0, '@markup.heading', { link = '@markup.strong' })
