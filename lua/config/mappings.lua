-- Jump between splits with Ctrl + direction
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Quick terminal
vim.keymap.set('n', '<leader>T', '<C-w>s<C-w>j:terminal<enter>A', {desc='Open terminal'})
