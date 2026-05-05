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

## tmux Glossary

- **Server**: the background `tmux` process that owns all sessions.
- **Session**: a workspace you can attach to and detach from. A session contains windows.
- **Window**: similar to a terminal tab inside a session. A window contains panes.
- **Pane**: a split terminal area inside a window.
- **Client**: the terminal currently attached to a tmux session.
- **Attach**: connect your current terminal to an existing session.
- **Detach**: leave a session running in the background.
- **Prefix**: the key sequence pressed before tmux commands. The default prefix is `Ctrl-b`.

Hierarchy:

```text
tmux server
`-- session
    `-- window
        `-- pane
```

Common session commands:

```bash
tmux new -s name       # create a new session
tmux ls               # list sessions
tmux attach -t name    # attach to a session
tmux kill-session -t name
```

Default prefix examples:

```text
Ctrl-b d      detach
Ctrl-b c      new window
Ctrl-b %      split pane horizontally
Ctrl-b "      split pane vertically
Ctrl-b arrow  move between panes
Ctrl-b ,      rename window
Ctrl-b $      rename session
```

## Current Features

- Mouse support.
- Large scrollback history.
- One-based window and pane indexes.
- Stable pane layouts across clients with different terminal sizes.
- True color support.
- Clipboard integration.
- Faster escape handling for vi-style workflows.
- Focus events for terminal applications.
- Better modified-key handling with `xterm-keys`.
- New windows and split panes open in the active pane's path.
- `prefix+|` and `prefix+-` split pane aliases.
- `prefix+R` reloads the tmux config.
- Pane borders are hidden.
- Active pane paths in the tmux status window list.
- Pane paths in the `prefix+s` and `prefix+w` pickers.
