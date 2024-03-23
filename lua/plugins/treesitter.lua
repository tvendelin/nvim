return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { 
                    "c",
                    "go",
                    "python",
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
                },
                auto_install = true,
                ignore_install = {},
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end,
    }
}
