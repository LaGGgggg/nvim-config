if vim.fn.has('win32') or vim.fn.has('win64') then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-command'
end

vim.api.nvim_create_autocmd('TermOpen', {
    callback = function()
        vim.api.nvim_buf_set_option(0, 'modifiable', true)
    end,
})
