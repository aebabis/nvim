-- Jump between splits with Ctrl + direction
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h',{silent=true})
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j',{silent=true})
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k',{silent=true})
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l',{silent=true})

local make_window = function(options)
  local handle = vim.api.nvim_open_win(0, false, options)
  vim.api.nvim_set_current_win(handle)
  return handle
end

local open_split_terminal = function()
  make_window({ split = 'below', win = -1 })
  -- TODO: Resize window based on editor size
  vim.cmd(':terminal')
end

-- Quick terminal
vim.keymap.set('n', '<leader>T', open_split_terminal, {desc='Open terminal'})
vim.api.nvim_create_autocmd({ 'TermOpen', 'WinEnter' }, { pattern = 'term://*', command = 'startinsert' })
