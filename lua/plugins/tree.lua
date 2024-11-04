return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup({})
    end,
  }, {
    'tiagofumo/vim-nerdtree-syntax-highlight'
  }, {
    'Xuyuanp/nerdtree-git-plugin',
  }
}
