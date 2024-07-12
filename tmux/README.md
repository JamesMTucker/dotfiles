# TMUX setup

## Installation

```bash
# check the operating system for either linux or mac

# check if brew is installed
if ! command -v brew &> /dev/null; then
    echo "brew is not installed"
    exit 1
else
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install tmux
    elif [["$OSTYPE" == "darwin"* ]]; then
        brew install tmux
fi 

## Plugins

Plugins are located `~/.tmux/plugins/tpm`

- tmux-continuum
- tmux-resurrect
- tmux-yank
- tmux-sessionx
- tmux-fzf-url
- tmux-fzf
- vim-tmux-navigator
- tmux
- tmux-sensible

## Configuration

Configuration is located in `~/.tmux.conf` and `~/.config/tmux/tmux.reset.conf`

