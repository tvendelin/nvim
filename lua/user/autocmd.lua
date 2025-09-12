vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ timeout = 200 })
	end,
})

vim.api.nvim_create_augroup("DadbodHorizontalSplit", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "DadbodHorizontalSplit",
  pattern = "dbout",
  callback = function()
    vim.opt.splitbelow = true                 -- always open horizontal splits below
    local height = math.floor(vim.o.lines * 0.5) -- 50% of total screen height
    vim.cmd("wincmd J")                       -- move the dbout window to bottom
    vim.cmd("resize " .. height)              -- resize it
  end,
})

