return {
	{
		"nvim-lualine/lualine.nvim",
		priority = 1002,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		-- opts = { icons_enabled = true, theme = "ayu_dark" },
		config = function()
			require("lualine").setup({
				options = { theme = "gruvbox_dark" },
			})
		end,
	},
}
