vim.keymap.set("n", "<leader>ev", ":vsp $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sv", ":source %<CR>")

-- Auto-close quotes, braces, etc.
-- If a key does not remap, go to Insert mode,
-- type <C-v>, then the key.
-- Either the key or the code for it will show up.

vim.keymap.set("i", '""', '""<left>', { noremap = true })
vim.keymap.set("i", "''", "''<left>", { noremap = true })
vim.keymap.set("i", "``", "``<left>", { noremap = true })
vim.keymap.set("i", "(", "()<left>", { noremap = true })
vim.keymap.set("i", "[", "[]<left>", { noremap = true })
vim.keymap.set("i", "{", "{}<left>", { noremap = true })
vim.keymap.set("i", "{<CR>", "{<CR>}<C-o>O", { noremap = true })
-- if jit.os == "OSX" then
-- 	vim.keymap.set("i", "{", "{}<left>", { noremap = true })
-- 	vim.keymap.set("i", "{<CR>", "{<CR>}<C-o>O", { noremap = true })
-- else
-- 	vim.keymap.set("i", "<S-{>", "{}<left>", { noremap = true })
-- 	vim.keymap.set("i", "<S-{><CR>", "{<CR>}<C-o>O", { noremap = true })
-- end

-- Navigation between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })

-- vim.keymap.set('i')

-- Display help in a vertical split by default
vim.cmd(":cabbre h vert h ")

-- oil.nvim file browser
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- deactivate residual highlight after search
-- (simple version commented out but kept just in case)
-- vim.keymap.set('n', '<S-C-l>', ':nohlsearch<CR>', { silent = true })
vim.keymap.set("n", "<Esc>", function()
	if vim.v.hlsearch == 1 then
		vim.cmd("nohlsearch")
	else
		return "<Esc>"
	end
end, { expr = true, silent = true })

vim.keymap.set("n", "<leader>o", "zO", { desc = "Unfold function and all inside" })

vim.keymap.set("n", "<leader>eh", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostic float" })
