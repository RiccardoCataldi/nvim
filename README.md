# Neovim Keybindings

> 📚 **See also**: [Tmux Basic Commands](tmux.md)

## Leader Key
- **Leader**: `Space`

## Navigation
| Shortcut | Command | Description |
|----------|---------|-------------|
| `gg` | Go to start | Jump to the first line of the file |
| `G` | Go to end | Jump to the last line of the file |
| `<line number> G` | Jump to line | Jump to specific line number (e.g., `42G` jumps to line 42) |
| `?` | Go to end of line | Move cursor to end of current line (replaces backward search) |
| `Ctrl-o` | `go_back` | Navigate back to previous location |
| `:set number` | Show line numbers | Display line numbers on the left side of the buffer |

## Text Editing
| Shortcut | Action | Description |
|----------|--------|-------------|
| `ggyG` or `:%y` | Yank entire file | Copy the entire file (automatically synced to system clipboard) |
| `yy` | Yank line | Copy the entire line (automatically synced to system clipboard) |
| `yiw` | Yank inner word | Copy the word under cursor (doesn't include whitespace) |
| `yw` | Yank word | Copy word including trailing whitespace (stops at punctuation like dots) |
| `yW` | Yank WORD | Copy WORD including punctuation (useful for `self.scaled_pattern.outer_margin()`) |
| `"+yy` | Yank line to clipboard | Explicitly copy line to system clipboard (use `"+` register) |
| `"+ggyG` or `"+%y` | Yank file to clipboard | Explicitly copy entire file to system clipboard |
| `p` | Paste after | Paste after cursor position |
| `P` | Paste before | Paste before cursor position |
| `"+p` | Paste from clipboard | Paste from system clipboard (use `"+` register) |
| `diw` | Delete inner word | Delete the word under cursor (doesn't include whitespace) |
| `ciw` | Change inner word | Delete word and enter insert mode |
| `dw` | Delete word | Delete word including trailing whitespace |

## Commenting
| Shortcut | Action | Description |
|----------|--------|-------------|
| `gcc` | Toggle comment | Comment/uncomment current line |
| `V` then `gc` | Comment selection | In visual mode, select lines with `V` (Shift-v), then press `gc` to comment/uncomment |
| `Ctrl-v` then `gc` | Comment block | In visual block mode (`Ctrl-v`), select columns, then press `gc` to comment/uncomment |

## Search & Replace
| Shortcut | Command | Description |
|----------|---------|-------------|
| `:%s/old/new/g` | Substitute all | Replace all occurrences of "old" with "new" in entire file |
| `:%s/old/new/gc` | Substitute with confirm | Replace all with confirmation prompt for each match |

### Search Workflow: Copy word to search
1. Copy the word: `yw` (yank word) or `yiw` (yank inner word)
2. Open search: `/`
3. Paste: `Ctrl+r` followed by `"` (paste from default register)

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

## Diagnostics (Errors & Warnings)
| Shortcut | Command | Description |
|----------|---------|-------------|
| `<leader>e` | `open_float` | Open diagnostic in floating window |
| `[d` | `goto_prev` | Jump to previous diagnostic |
| `]d` | `goto_next` | Jump to next diagnostic |
| `<leader>q` | `setloclist` | Open diagnostic list (quickfix) |

## Completion (nvim-cmp)
| Shortcut | Action | Description |
|----------|--------|-------------|
| `<C-Space>` | Trigger completion | Open the completion menu in insert mode |
| `<CR>` | Confirm selection | Accept item; selects first by default |
| `<C-b>` | Scroll docs up | Scroll documentation window up |
| `<C-f>` | Scroll docs down | Scroll documentation window down |
| `<C-e>` | Abort | Close/abort completion menu |

## Git Signs (gitsigns.nvim)
| Shortcut | Action | Description |
|----------|--------|-------------|
| `]c` | Next hunk | Jump to next change hunk |
| `[c` | Previous hunk | Jump to previous change hunk |
| `<leader>hs` | Stage hunk | Stage current hunk |
| `<leader>hr` | Reset hunk | Reset current hunk |
| `<leader>hS` | Stage buffer | Stage all changes in buffer |
| `<leader>hR` | Reset buffer | Reset all changes in buffer |
| `<leader>hp` | Preview hunk | Open floating preview of current hunk |
| `<leader>hi` | Preview hunk inline | Show inline preview of current hunk |
| `<leader>hb` | Blame line (full) | Show full blame for current line |
| `<leader>hd` | Diff this | Diff current buffer against index |
| `<leader>hD` | Diff this (~) | Diff buffer against previous commit |
| `<leader>hQ` | Populate quickfix (all) | Send all hunks to quickfix list |
| `<leader>hq` | Populate quickfix | Send file hunks to quickfix list |
| `<leader>tb` | Toggle blame | Toggle current line blame |
| `<leader>tw` | Toggle word diff | Toggle word diff view |
| `ih` (text object) | Select hunk | Use in operator-pending/visual mode |
