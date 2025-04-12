return {
    {
        "tvendelin/minimalist.nvim",
        opts = {
            win_opts = {
                width = 0.6,
                height = 0.9,
                col = nil,
                row = nil,
                relative = "editor",
                style = "minimal",
            },
            wo = {
                number = false,
                relativenumber = false,
                signcolumn = "no",
                fillchars = "eob: ",
            },
            o = {
                laststatus = 0,
                cmdheight = 0,
            },
        },
    },
}
