vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 5

-- change to "a" on Mac
-- copy-and-paste without line numbers
vim.opt.mouse = ""

vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false
