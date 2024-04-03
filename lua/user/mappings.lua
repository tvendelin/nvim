vim.keymap.set("n", "<leader>ev", ":vsp $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sv", ":source %<CR>")

-- Auto-close quotes, braces, etc.
-- If a key does not remap, go to Insert mode,
-- type <C-v>, then the key.
-- Either the key or the code for it will show up.

-- Pythonic docstring
vim.keymap.set("i", '"""<CR>', '"""<CR>"""<C-o>O', { noremap = true })
vim.keymap.set("i", "'''<CR>", "'''<CR>'''<C-o>O", { noremap = true })

-- Markdown code
vim.keymap.set("i", "```<CR>", "```<CR>```<C-o>O", { noremap = true })

vim.keymap.set("i", '""', '""<left>', { noremap = true })
vim.keymap.set("i", "''", "''<left>", { noremap = true })
vim.keymap.set("i", "``", "``<left>", { noremap = true })
vim.keymap.set("i", "(", "()<left>", { noremap = true })
vim.keymap.set("i", "[", "[]<left>", { noremap = true })
if jit.os == "OSX" then
	vim.keymap.set("i", "{", "{}<left>", { noremap = true })
	vim.keymap.set("i", "{<CR>", "{<CR>}<C-o>O", { noremap = true })
else
	vim.keymap.set("i", "<S-{>", "{}<left>", { noremap = true })
	vim.keymap.set("i", "<S-{><CR>", "{<CR>}<C-o>O", { noremap = true })
end

-- Navigation between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
-- vim.keymap.set('i')

vim.cmd(":cabbre h vert h ")
