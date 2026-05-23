vim.opt_global.statusline = table.concat({
    " %f",          -- file name / path
    " %h%m%r",      -- help / modified / readonly flags
    " %=",          -- right align the rest
    " %(%l/%L,%c%V%)", -- cursor line, col (virt col)
    -- selected chars in visual mode
    "%{mode() =~# '[vV\\^V]' ? ',' .. wordcount().visual_chars : ''}",
})
