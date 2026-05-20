# Neovim Config

## Structure

- `init.lua` — Entry point. Bootstraps lazy.nvim, loads plugins and user config.
- `lua/plugins/` — Plugin specs (one file per plugin or group), loaded by lazy.nvim.
- `lua/user/` — User config: `base.lua` (options), `mappings.lua`, `autocmd.lua`, `filetypes.lua`.
- `after/ftplugin/` — Per-filetype overrides (e.g., disable treesitter highlight for markdown/yaml/diff).
- `kickstart/` — Reference configs from kickstart.nvim (not active, for comparison only).

## Key decisions

- **Plugin manager:** lazy.nvim with `rocks = { enabled = false }` (no luarocks binary available).
- **nvim-treesitter:** Tracks `branch = "main"`. The legacy `configs.setup()` module is gone — install parsers with `require('nvim-treesitter').install({...})`, requires `tree-sitter` CLI at install/update time (`port install tree-sitter-cli`). Highlight and indent are both opt-in per filetype: a `FileType` autocmd in `lua/plugins/treesitter.lua` calls `vim.treesitter.start()` and sets `vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"`. Neovim's own runtime auto-starts highlight only for the few bundled filetypes (`lua`, `markdown`, `help`, `checkhealth`, `query`) via files in `$VIMRUNTIME/ftplugin/`.
- **Telescope:** Uses `branch = "master"` (not `0.1.x`) to avoid deprecated `vim.lsp.util.jump_to_location` on Neovim 0.11+.
- **Leader key:** `,` (both leader and localleader).
- **Remote plugin providers:** All disabled (node/perl/python/ruby) — no plugins need them. LSP servers are external processes managed by Mason, unrelated to providers.
- **Folding:** Uses built-in `vim.treesitter.foldexpr()`, not the removed `nvim_treesitter#foldexpr()`.

## Formatting

- Lua files are formatted with **stylua** on save. Always run `stylua` on modified `.lua` files before committing.
- stylua is available at `/opt/local/bin/stylua`.

## LSP / Mason

- Mason installs LSP servers to `~/.local/share/nvim/mason/bin/`.
- Configured servers: bashls, clangd, lua_ls, marksman, pyright, rust_analyzer, stylua.

## Gotchas

- For the bundled filetypes (`lua`, `markdown`, `help`, `checkhealth`, `query`), Neovim's own `runtime/ftplugin/<ft>.lua` calls `vim.treesitter.start()`. To disable highlight for one of those, call `vim.treesitter.stop()` in `after/ftplugin/<ft>.lua` (see `markdown.lua`). For other filetypes, highlight is only on if `lua/plugins/treesitter.lua` lists them in `highlight_filetypes` — to disable, omit them (or stop them via after/ftplugin).
- Indent on the `main` branch is per-buffer: enabled by setting `indentexpr` in a `FileType` autocmd, disabled by `vim.bo.indentexpr = ""` in `after/ftplugin/<ft>.lua`.
- MacPorts `lua51-luarocks` installs only library files, no `luarocks` binary.
