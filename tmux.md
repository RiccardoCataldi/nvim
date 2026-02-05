# Tmux Basic Commands

## Prefix Key
- **Prefix**: `Ctrl-b` (default) - Press this before any tmux command

## Session Management
| Command | Description |
|---------|-------------|
| `tmux` | Start a new session |
| `tmux new -s <name>` | Start a new named session |
| `tmux ls` | List all sessions |
| `tmux attach -t <name>` | Attach to a session |
| `tmux kill-session -t <name>` | Kill a session |
| `<prefix> d` | Detach from current session |
| `<prefix> s` | List and switch between sessions |
| `<prefix> $` | Rename current session |

## Window Management
| Command | Description |
|---------|-------------|
| `<prefix> c` | Create new window |
| `<prefix> ,` | Rename current window |
| `<prefix> w` | List all windows |
| `<prefix> n` | Switch to next window |
| `<prefix> p` | Switch to previous window |
| `<prefix> 0-9` | Switch to window by number |
| `<prefix> &` | Kill current window |

## Pane Management
| Command | Description |
|---------|-------------|
| `<prefix> %` | Split window vertically (left/right) |
| `<prefix> "` | Split window horizontally (top/bottom) |
| `<prefix> <arrow>` | Navigate between panes (arrow keys) |
| `<prefix> q` | Show pane numbers |
| `<prefix> x` | Kill current pane |
| `<prefix> z` | Zoom/unzoom current pane |
| `<prefix> {` | Swap pane with previous |
| `<prefix> }` | Swap pane with next |
| `<prefix> <space>` | Toggle between pane layouts |

## Copy Mode
| Command | Description |
|---------|-------------|
| `<prefix> [` | Enter copy mode |
| `Space` | Start selection |
| `Enter` | Copy selection |
| `<prefix> ]` | Paste |

## Other Useful Commands
| Command | Description |
|---------|-------------|
| `<prefix> ?` | List all key bindings |
| `<prefix> t` | Show clock |
| `<prefix> :` | Enter command mode |
| `<prefix> r` | Reload config file |

## Common Workflows
- **Detach and reattach**: `<prefix> d` to detach, then `tmux attach` to reconnect
- **Create vertical split**: `<prefix> %` then navigate with arrow keys
- **Create horizontal split**: `<prefix> "` then navigate with arrow keys
- **Copy text**: `<prefix> [` → navigate → `Space` → select → `Enter` → `<prefix> ]` to paste
