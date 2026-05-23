local cmp = require('cmp')

return {
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ['<C-j>'] = cmp.mapping.select_prev_item(),
    ['<C-k>'] = cmp.mapping.select_next_item(),
    ['<C-a>'] = cmp.mapping.abort(),
}
