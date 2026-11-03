return {
	{
		"fatih/vim-go",
		config = function()
			-- gopls runs through nvim-lspconfig; vim-go would start a second instance of its own.
			vim.g.go_gopls_enabled = 0
			vim.g.go_fmt_command = "goimports"
			vim.g.go_def_mapping_enabled = 0
			vim.g.go_list_type = "quickfix"
		end,
	},
}
