vim.keymap.set('n', '<leader>ev', ':vsp $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>sv', ':source $MYVIMRC<CR>')

-- Auto-close quotes, braces, etc.
-- If a key does not remap, go to Insert mode, 
-- type <C-v>, then the key. 
-- Either the key or the code for it will show up. 
vim.keymap.set('i', '""', '""<left>', {noremap = true})
vim.keymap.set('i', "''", "''<left>", {noremap = true})
vim.keymap.set('i', '(', '()<left>', {noremap = true})
vim.keymap.set('i', '[', '[]<left>', {noremap = true})
vim.keymap.set('i', '<S-{>', '{}<left>', {noremap = true})
vim.keymap.set('i', '<S-{><CR>', '{<CR><CR>}<left><up><TAB>', {noremap = true})
-- vim.keymap.set('i')

