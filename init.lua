-- Global, environment variables; options
require('config.options')

-- Keymaps
require('config.keymaps.folds')
require('config.keymaps.global')
require('config.keymaps.marks')
require('config.keymaps.registers')
require('config.keymaps.splits')
require('config.keymaps.tabs')
require('config.keymaps.terminals').global()

-- Inits
require('config.inits.global')
require('config.inits.colorscheme')
require('config.inits.treesitter')
require('config.inits.lua')
require('config.inits.python')
require('config.inits.rust')
require('config.inits.terminal')
require('config.lazy')
require('config.inits.neotree')
require('config.keymaps.git')

-- Keymaps after plugins load (config.lazy)
require('config.keymaps.telescope')
require('config.keymaps.github_copilot').global()

-- Statuslines
require('config.statuslines.default')
require('config.statuslines.gitsigns')

-- LSP
require('config.lsp.js_ts')
require('config.lsp.vue')
require('config.lsp.python')
require('config.lsp.tailwind')
require('config.lsp.c_based')
require('config.lsp.lua')
require('config.lsp.rust')
