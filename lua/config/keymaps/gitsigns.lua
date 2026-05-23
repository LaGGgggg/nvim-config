return function(bufnr)

    local gitsigns = require('gitsigns')

    local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
    end

    -- Actions
    -- Hunk
    map('n', 'Gs', gitsigns.stage_hunk)
    map('n', 'Gu', gitsigns.reset_hunk)
    map('v', 'Gs', function()
        gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
    end)
    map('v', 'Gu', function()
        gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
    end)

    -- Buffer
    map('n', 'GS', gitsigns.stage_buffer)
    map('n', 'GU', gitsigns.reset_buffer)

    map('n', 'Gp', gitsigns.preview_hunk_inline)
    map('n', 'GP', gitsigns.preview_hunk)

    map('n', 'Gb', function()
        gitsigns.blame_line({ full = true })
    end)

    map('n', 'Gd', gitsigns.diffthis)

    -- Toggles
    map('n', 'Gtb', gitsigns.toggle_current_line_blame)
    map('n', 'Gtw', gitsigns.toggle_word_diff)
    map('n', 'Gtd', gitsigns.toggle_deleted)
end
