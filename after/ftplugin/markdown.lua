-- Markdown code
vim.keymap.set("i", "```<CR>", "```<CR>```<C-o>O", { noremap = true })
vim.opt.textwidth = 90
vim.cmd("TSDisable highlight")
vim.cmd("TSDisable  indent")
