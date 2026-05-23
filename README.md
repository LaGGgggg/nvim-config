### LaGGgggg's Neovim config
This repository contains my Neovim configuration files. Feel free to use it for any task!
If you have any questions, you can open an issue or contact me via the links/email in the
[profile](https://github.com/LaGGgggg).

### How to use it
1. [Install nvim](https://neovim.io/doc/install/)
2. Clone this repository: `git clone https://github.com/LaGGgggg/nvim-config ~/.config/nvim`
3. Use your new Neovim!

### Structure
```text
nvim
├───init.lua     # main Neovim entry point
├───lazy.lock    # lazy.nvim plugin versions
├───colors       # color schemes
│   └───...
└───lua          # main directory for lua config files
    ├───colors   # color schemes additional info
    │   └───...
    ├───plugins  # plugin settings
    │   └───...
    └───config   # main configs directory
        ├───lazy.lua     # lazy.nvim entry point
        ├───options.lua  # Neovim's global options overrides
        ├───inits        # Neovim's autocmds
        │   └───...
        ├───keymaps      # keymaps overrides
        │   └───...
        ├───lsp          # LSP configurations
        │   └───...
        └───statuslines  # Neovim's statusline overrides
            └───...
```

### `init.lua`
`init.lua` file is Neovim's entry point. In this file I enable all required configurations.
My `init.lua` does not have any strict format, but I prefer to use only `require(...)` lines and
comments in it.

If you want to disable/enable something, you should change this file. To disable, for example,
a keymap configuration file, just remove the corresponding `require(...)`.

### Plugins
I use [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager.
It will be installed automatically on Neovim startup if it is not installed yet.
All plugins will be installed automatically too.

I use default lazy's configuration except that `checker` option is off and lazy does not
automatically check for plugin updates. I update my plugins manually when needed.

Any plugin can have configured options inside its spec. See the file if you want to see/change
something. Inside a spec, default plugin key mappings can be overwritten, but all its overrides
live inside the `lua/config/keymaps` directory.

All plugins are loaded from the `lua/plugins` directory:
```text
lua/plugins
├───main_spec.lua
├───autocomplete_spec.lua
├───lsp_spec.lua
├───git_spec.lua
├───github_copilot_spec.lua
└───wakatime_spec.lua
```

#### Main
This spec loads all my must-have plugins.

##### [Telescope](https://github.com/nvim-telescope/telescope.nvim)
Allows you to easily and very fast find any file or text in any file.
It also allows searching across registers, marks, buffers and much much more.

##### [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
Builds a beautiful and feature-full tree view of a pwd.

##### [Virt-column](https://github.com/lukas-reineke/virt-column.nvim)
Displays a character as the colorcolumn. Useful to always see max allowed line length.

##### [Auto-save](https://github.com/okuuva/auto-save.nvim)
Automatically saves file changes.

##### [Comment](https://github.com/numtostr/comment.nvim)
Easily comment/uncomment selected code.

#### Autocomplete
This spec loads all plugins required to provide code completion.

##### [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
A completion engine with enabled buffer, path and cmd line completions.
This plugin will work with any configured [LSPs](#lsps).

##### [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Provides enhanced code parsers and is used by many other plugins.
Enabled languages can be changed in the [spec](lua/plugins/autocomplete_spec.lua).

#### Lsp
This spec loads [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) plugin,
which is required to use [LSPs](#lsps).

#### Git
This spec loads [gitsigns](https://github.com/lewis6991/gitsigns.nvim) plugin, which shows
git changes inline.

#### GitHub Copilot
This spec loads [copilot-lua](https://github.com/zbirenbaum/copilot.lua) plugin, which is used
to interact with [GitHub Copilot](https://github.com/features/copilot) inside Neovim.

#### WakaTime
This spec loads [vim-wakatime](https://github.com/wakatime/vim-wakatime) plugin to track
your coding time.

### LSPs
All LSP config files are listed inside the `lua/config/lsp` directory. I write in many
languages, so I have a lot of LSP configs. All configs are defined in the same way with the same
structure.

Example of a config:
```lua
vim.lsp.config('clangd', {
    -- a table of LSP file types
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
    -- a function, which will be executed when the LSP attaches to a buffer
    on_attach = function()
        -- apply default LSP keymaps
        require('config.keymaps.lsp')()
    end,
})

-- enable configured LSP
vim.lsp.enable('clangd')
```

Supported LSPs can be found [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md).

Now I use these LSPs:
- C-based: [clangd](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#clangd)
- JavaScript/TypeScript: [ts_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ts_ls)
- Lua: [lua_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls)
- Python: [ruff](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ruff) and
[pyright](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pyright)
- Rust: [rust_analyzer](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#rust_analyzer)
- Tailwind CSS: [tailwindcss](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#tailwindcss)
- Vue.js: [vue_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#vue_ls)

### Color scheme
My color scheme is inspired by [Alabaster](https://github.com/tonsky/vscode-theme-alabaster):
> Most color themes highlight everything they can, ending up looking like a fireworks show.
> Instead, Alabaster uses minimal highlighting; it defines just four classes:
> 1. Strings
> 2. All statically known constants (numbers, symbols, user-defined keywords, boolean values)
> 3. Comments
> 4. Global definitions

My version at the moment does not have the fourth class at all and uses different colors for other
classes. Strings and constants just use brighter colors, comments are yellow instead of red.
Also my version changes all Neovim's inline diagnostic message colors to normal white.

All colors can be found in [lua/colors/alabaster_by_lagggggg/colors.lua](lua/colors/alabaster_by_lagggggg/colors.lua).
All global highlight groups can be found in [colors/alabaster_by_lagggggg.lua](colors/alabaster_by_lagggggg.lua).

In the [lua/config/inits/colorscheme.lua](lua/config/inits/colorscheme.lua) the
`alabaster_by_lagggggg` scheme is applied.
Also inside this file my custom markdown highlight groups are defined and set as an autocmd for
markdown files, [more info about it](#markdown-color-scheme).

#### Markdown color scheme
I list my to-dos inside a markdown file and edit it with Neovim, so I need some more
highlights for this use case.

Matches:
- `!!` - `markdown_extended.priority`
- ` \\d\\d ` - `markdown_extended.date`
- `!!\\d\\d ` - `markdown_extended.priority_date`

Highlights:
- All headings are not bold
- `markdown_extended.priority`, `markdown_extended.priority_date` are bold, italic and use the
comment color
- `markdown_extended.date` is bold and uses the comment color

### Keymaps
*Documentation work in progress..*

### Inits
*Documentation work in progress..*

### Statuslines
*Documentation work in progress..*

### Options
*Documentation work in progress..*

### Python development

#### Django types support
To enable Django types support, you can use [django-stubs](https://github.com/typeddjango/django-stubs).
Just install it and types should already work, no additional configuration is needed.

#### LSPs
*Documentation work in progress..*
