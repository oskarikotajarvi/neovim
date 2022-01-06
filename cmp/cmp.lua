vim.o.completeopt = "menuone,noselect"

local cmp = require'cmp'

  cmp.setup({
      snippet = {
          expand = function(args)
              vim.fn["vsnip#anonymous"](args.body)
          end,
      },

      mapping = {
          ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
          ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
          ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ['<C-y>'] = cmp.config.disable,
          ['<C-e>'] = cmp.mapping({
              i = cmp.mapping.abort(),
              c = cmp.mapping.close(),
          }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), 
      },

      sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' },
      }, {
          { name = 'path' },
          { name = 'treesitter' },
      })
  })

  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
