# tmuxfiles

Personal tmux configuration for `guerrerocarlos`.

## Install

Clone the repository:

```bash
gh repo clone guerrerocarlos/tmuxfiles ~/tmuxfiles
```

Install the config:

```bash
~/tmuxfiles/install.sh
```

The installer backs up an existing regular `~/.tmux.conf`, links this repo's `.tmux.conf` into place, and reloads tmux when run inside a tmux session.

## Update

```bash
cd ~/tmuxfiles
git pull
./install.sh
```

## Current Features

- Mouse support.
- Large scrollback history.
- One-based window and pane indexes.
- Stable pane layouts across clients with different terminal sizes.
- True color support.
- Clipboard integration.
- Pane paths in pane borders.
- Active pane paths in the tmux status window list.
- Pane paths in the `prefix+s` and `prefix+w` pickers.
