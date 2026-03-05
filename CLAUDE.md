# Neovim Config

## Structure

- `init.lua` — Entry point. Bootstraps lazy.nvim, loads plugins and user config.
- `lua/plugins/` — Plugin specs (one file per plugin or group), loaded by lazy.nvim.
- `lua/user/` — User config: `base.lua` (options), `mappings.lua`, `autocmd.lua`, `filetypes.lua`.
- `after/ftplugin/` — Per-filetype overrides (e.g., disable treesitter highlight for markdown/yaml/diff).
- `kickstart/` — Reference configs from kickstart.nvim (not active, for comparison only).

## Key decisions

- **Plugin manager:** lazy.nvim with `rocks = { enabled = false }` (no luarocks binary available).
- **nvim-treesitter:** Pinned to `tag = "v0.10.0"`. The `main` branch dropped the `configs` module and has broken async parser installation. The v0.10.0 tag retains `ensure_installed`, `TSDisable`, and the old `configs.setup()` API.
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

- `after/ftplugin/` files use `TSDisable` commands — these only work with nvim-treesitter v0.10.0. If treesitter is ever updated past v0.10.0, replace with `vim.treesitter.stop()` and `vim.bo.indentexpr = ""`.
- MacPorts `lua51-luarocks` installs only library files, no `luarocks` binary.
