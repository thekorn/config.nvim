# AGENTS.md — Neovim Configuration (lazy.nvim)

## Overview
Personal Neovim config using **lazy.nvim** as plugin manager. Entry point is `init.lua` → `lua/config/lazy.lua`, which loads options, plugins, and keymaps.

## Structure
- `init.lua` — Bootstrap; requires `config.lazy`
- `lua/config/lazy.lua` — lazy.nvim setup, leader keys (`<Space>` / `\`)
- `lua/config/options.lua` — Vim options (indent, search, splits, etc.)
- `lua/config/keymaps.lua` — Global keybindings
- `lua/plugins/*.lua` — One file per plugin (auto-imported by lazy.nvim)

## Build / Validation
- No build or test commands. To validate: open Neovim (`nvim`) and run `:checkhealth`.
- Plugin management: `:Lazy sync` to install/update, `lazy-lock.json` is the lockfile.

## Code Style (Lua)
- **Indent**: 4 spaces (see `.editorconfig` and `options.lua`)
- **Strings**: Use double quotes (`"`) for consistency with existing code
- **Plugin specs**: One plugin per file in `lua/plugins/`, return a table (lazy.nvim spec format)
- **Naming**: Filenames match plugin names (e.g., `gitsigns.lua`, `fzf-lua.lua`)
- **Leader**: `<Space>` (leader), `\` (localleader) — set in `lazy.lua` before plugin load
- **No trailing whitespace**; use `vim.opt`, `vim.g`, `vim.api` (not legacy vimscript)
