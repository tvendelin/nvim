-- Markdown code
vim.keymap.set("i", "```<CR>", "```<CR>```<C-o>O", { noremap = true })
vim.opt.textwidth = 30
vim.cmd('TSDisable highlight')
