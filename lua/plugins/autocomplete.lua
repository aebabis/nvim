return {
  'hrsh7th/nvim-cmp',
  event = {'InsertEnter'},
  config = function()
    print("Autocomplete loaded")
    local cmp = require('cmp')

    cmp.setup({
      sources = {
        {name = 'nvim_lsp'},
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-g>'] = cmp.mapping.complete(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      }),
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      }, {
        { name = 'buffer' },
      }
    })
  end
}

