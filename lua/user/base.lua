vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Disable remote plugin providers (only needed for plugins *written in* these
-- languages, not for external tools like LSP servers that happen to use them)
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

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

vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldenable = false
