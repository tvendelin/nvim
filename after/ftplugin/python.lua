-- Pythonic docstring
vim.keymap.set("i", '"""<CR>', '"""<CR><BS>"""<C-o>O', { noremap = true })
vim.keymap.set("i", "'''<CR>", "'''<CR><BS>'''<C-o>O", { noremap = true })
