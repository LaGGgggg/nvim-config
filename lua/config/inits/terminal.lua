if vim.fn.has('win32') or vim.fn.has('win64') then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-command'
end

vim.api.nvim_create_autocmd('TermOpen', {
    callback = function()
        vim.api.nvim_set_option_value('modifiable', true, { buf = 0 })
    end,
})
