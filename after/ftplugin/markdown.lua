-- Markdown code
vim.keymap.set("i", "```<CR>", "```<CR>```<C-o>O", { noremap = true })
vim.opt.textwidth = 90
vim.treesitter.stop()
vim.bo.indentexpr = ""
