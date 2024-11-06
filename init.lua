-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.mappings")

-- User preferences
vim.cmd.colorscheme('nightfox')
vim.cmd('set number')
