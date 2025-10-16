# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a Neovim configuration built around a modular Lua-based structure:

- **Entry point**: `init.lua` loads the main configuration module and sets custom file type associations
- **Core module**: `lua/izzy/` contains the main configuration components
- **Plugin configurations**: `after/plugin/` contains individual plugin setup files that load after plugins are installed
- **Plugin management**: Uses Lazy.nvim for plugin management via `lua/izzy/lazy.lua`

## Key Components

### Core Configuration Structure
- `lua/izzy/init.lua` - Main module entry point
- `lua/izzy/base.lua` - Base Neovim settings (indentation, UI options, leader key)
- `lua/izzy/remap.lua` - Keymap utility functions for binding keys
- `lua/izzy/lazy.lua` - Plugin specifications and Lazy.nvim setup

### Plugin Configuration Files
- `after/plugin/lsp.lua` - LSP configuration with nvim-cmp completion
- `after/plugin/telescope.lua` - File finder and search functionality  
- `after/plugin/harpoon.lua` - Quick file navigation
- `after/plugin/keymap/init.lua` - Global keymaps and shortcuts
- `after/plugin/treesitter.lua` - Syntax highlighting and parsing
- `after/plugin/vimtree.lua` - File explorer
- `after/plugin/color.lua` - Colorscheme configuration

## Plugin Management Commands

**Open Lazy.nvim UI:**
```
:Lazy
```

**Install/update all plugins:**
```
:Lazy sync
```

**Install plugins:**
```
:Lazy install
```

**Update plugins:**
```
:Lazy update
```

**Clean unused plugins:**
```
:Lazy clean
```

**Check for updates:**
```
:Lazy check
```

## LSP Configuration

The LSP setup in `after/plugin/lsp.lua` includes language servers for:
- TypeScript/JavaScript (`ts_ls`)
- Angular (`angularls`) 
- Lua (`lua_ls`)
- Python (`pyright`)
- C/C++ (`clangd`)

SQL completion is handled via vim-dadbod-completion for database work.

## Key Custom Features

### Keymap System
Uses a custom keymap utility (`lua/izzy/remap.lua`) that provides helper functions like `nnoremap`, `vnoremap`, `inoremap` for consistent key binding.

### File Navigation
- Telescope for fuzzy finding files and content search
- Harpoon for quick file marking and navigation
- NvimTree for file explorer functionality

### Database Integration
Includes vim-dadbod suite for database interaction with completion support for SQL/PLSQL files.

### Development Workflow
- Copilot integration for AI code completion
- Git integration via Gitsigns
- Custom git commands for database file management (`<leader>cg`, `<leader>cp`, etc.)

## File Type Associations

Custom file types are defined in `init.lua`:
- `.PBK`, `.PSK`, `.pbk`, `.psk` → `plsql`
- `.jsa` → `javascript`

## Common Development Patterns

When adding new plugins:
1. Add plugin specification to `lua/izzy/lazy.lua`
2. Create configuration file in `after/plugin/[plugin-name].lua`
3. Add any keymaps to `after/plugin/keymap/init.lua` or plugin-specific keymap files
4. Run `:Lazy sync` to install the new plugin

When modifying keymaps:
- Use the remap utilities from `lua/izzy/remap.lua` for consistency
- Global keymaps go in `after/plugin/keymap/init.lua`
- Plugin-specific keymaps can go in dedicated keymap files or within the plugin configuration