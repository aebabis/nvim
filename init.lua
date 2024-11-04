-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

-- set colorscheme last
-- there's probably a better way to do this
vim.cmd.colorscheme('tokyonight');
