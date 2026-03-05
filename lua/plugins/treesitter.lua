return {
	{
		"nvim-treesitter/nvim-treesitter",
		tag = "v0.10.0",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"go",
					"gomod",
					"gosum",
					"gotmpl",
					"gowork",
					"python",
					"rust",
					"bash",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"javascript",
					"json",
					"yaml",
					"markdown",
					"markdown_inline",
					"html",
					"dockerfile",
					"gitignore",
					"sql",
				},
				auto_install = true,
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
					disable = { "python", "yaml" },
				},
			})
		end,
	},
}
