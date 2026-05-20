local parsers = {
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
}

-- Filetypes where we want treesitter highlight. Neovim's built-in
-- ftplugins already call vim.treesitter.start() for lua, markdown, help
-- (vimdoc parser), checkhealth, and query — so they're not listed here.
-- markdown/yaml/diff are deliberately omitted (disabled in after/ftplugin).
local highlight_filetypes = {
	"bash",
	"c",
	"dockerfile",
	"gitignore",
	"go",
	"gomod",
	"gosum",
	"gotmpl",
	"gowork",
	"html",
	"javascript",
	"json",
	"python",
	"rust",
	"sql",
	"vim",
}

-- Filetypes where we want treesitter-based indent. Mirrors the v0.10.0
-- `indent.enable = true` with `disable = { "python", "yaml" }`, also
-- excluding markdown (disabled per-buffer there as before).
local indent_filetypes = {
	"bash",
	"c",
	"dockerfile",
	"gitignore",
	"go",
	"gomod",
	"gosum",
	"gotmpl",
	"gowork",
	"html",
	"javascript",
	"json",
	"lua",
	"query",
	"rust",
	"sql",
	"vim",
}

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install(parsers)

			vim.api.nvim_create_autocmd("FileType", {
				pattern = highlight_filetypes,
				callback = function()
					vim.treesitter.start()
				end,
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = indent_filetypes,
				callback = function()
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
}
