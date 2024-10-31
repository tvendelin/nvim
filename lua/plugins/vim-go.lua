return {
	{
		"fatih/vim-go",
		config = function()
			vim.g.go_fmt_command = "goimports"
			vim.g.go_def_mode = "gopls"
			vim.g.go_info_mode = "gopls"
			vim.g.go_def_mapping_enabled = 0
			vim.g.go_list_type = "quickfix"
		end,
	},
}
