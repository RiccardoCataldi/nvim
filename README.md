# Neovim Keybindings

## Leader Key
- **Leader**: `Space`

## Telescope (File Navigation)
| Shortcut | Command | Description |
|----------|---------|-------------|
| `<leader>ff` | `find_files` | Find and open files in current directory |
| `<leader>fg` | `live_grep` | Search for text across all files (live search) |
| `<leader>fb` | `buffers` | Switch between open buffers |
| `<leader>fh` | `help_tags` | Search through Neovim help documentation |

## LSP (Language Server) Commands
| Shortcut | Command | Description |
|----------|---------|-------------|
| `gD` | `declaration` | Go to symbol declaration |
| `gd` | `definition` | Go to symbol definition (where it's defined) |
| `K` | `hover` | Show documentation/info about symbol under cursor |
| `gi` | `implementation` | Go to symbol implementation |
| `<C-k>` | `signature_help` | Show function signature help |
| `<leader>D` | `type_definition` | Go to type definition |
| `<leader>rn` | `rename` | Rename symbol across entire project |
| `<leader>ca` | `code_action` | Show available code actions (fixes, refactors) |
| `gr` | `references` | Find all references to symbol |
