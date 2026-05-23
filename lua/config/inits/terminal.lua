if vim.fn.has('win32') or vim.fn.has('win64') then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-command'
end

vim.api.nvim_create_autocmd('TermOpen', {
    callback = function()

        require('config.keymaps.terminals').buffer_local()

        vim.api.nvim_set_option_value('modifiable', true, { buf = 0 })
    end,
})

vim.api.nvim_create_autocmd('BufEnter', {
    callback = function(args)
        if vim.bo[args.buf].buftype == 'terminal' then
            vim.cmd.startinsert()
        end
    end,
})
