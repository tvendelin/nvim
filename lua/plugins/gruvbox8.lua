return {
	{
		"lifepillar/vim-gruvbox8",
		priority = 1000,
		init = function()
			vim.opt.background = "dark"
			--			vim.cmd.colorscheme("gruvbox8_soft")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1001,
		config = function()
			require("gruvbox").setup({})
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
