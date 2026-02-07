-- GitSigns status ("+1 ~2 -3")
vim.opt_global.statusline:append(" %{get(b:, 'gitsigns_status', '')}")

-- Current git branch ("[branch_name]")
vim.opt_global.statusline:append(
    " %{len(get(b:, 'gitsigns_head', '')) ? ' [' . get(b:, 'gitsigns_head', '') . ']' : ''}"
)
