return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod", lazy = true },
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
	},
	cmd = {
		"DB",
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		-- Your DBUI configuration
		vim.g.db_ui_use_nerd_fonts = 1
	end,
	config = function()
		vim.g.db_ui_save_location = "dadbod"

		-- Set up omnifunc for SQL files
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "sql", "mysql", "plsql" },
			callback = function()
				vim.bo.omnifunc = "db#complete#omnifunc"
			end,
		})
	end,
}
