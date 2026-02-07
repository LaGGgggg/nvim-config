vim.opt_global.statusline = table.concat({
    " %f",          -- file name / path
    " %h%m%r",      -- help / modified / readonly flags
    " %=",          -- right align the rest
    " %(%l,%c%V%)", -- cursor line, col (virt col)
    " %P",          -- percent through file
})
