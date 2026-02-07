require('config.options')  -- global, environment variables; options

-- Keymaps
require('config.keymaps.folds')
require('config.keymaps.global')
require('config.keymaps.marks')
require('config.keymaps.registers')
require('config.keymaps.splits')
require('config.keymaps.tabs')
require('config.keymaps.terminals')

-- Inits
require('config.inits.global')
require('config.inits.lua')
require('config.inits.python')
require('config.inits.terminal')
require('config.lazy')
require('config.inits.neotree')

-- Keymaps after plugins load (config.lazy)
require('config.keymaps.telescope')

-- Statuslines
require('config.statuslines.default')
require('config.statuslines.gitsigns')

-- LSP
require('config.lsp.js_ts')
require('config.lsp.vue')
require('config.lsp.python')
require('config.lsp.tailwind')
require('config.lsp.c_based')
