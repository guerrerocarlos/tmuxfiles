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
Ctrl-b H/J/K/L move between panes
Ctrl-b Ctrl-arrow resize current pane by one cell
Ctrl-b Alt-arrow  resize current pane by five cells
Ctrl-b ,      rename window
Ctrl-b $      rename session
```

## Navigation

Windows and panes are different. The items in the tmux status line are windows. Pane movement only does something after a window has been split with `Ctrl-b |`, `Ctrl-b -`, `Ctrl-b %`, or `Ctrl-b "`.

### Sessions

```text
Ctrl-b s      choose a session from a list
Ctrl-b (      previous session
Ctrl-b )      next session
Ctrl-b L      last session/client
Ctrl-b $      rename current session
```

From the shell:

```bash
tmux ls
tmux attach -t session-name
tmux switch-client -t session-name
```

### Windows

```text
Ctrl-b n      next window
Ctrl-b p      previous window
Ctrl-b l      last window
Ctrl-b 1..9   switch to window by number
Ctrl-b w      choose a window from a list
```

### Panes

```text
Ctrl-b |      split pane left/right
Ctrl-b -      split pane top/bottom
Ctrl-b %      split pane horizontally
Ctrl-b "      split pane vertically
Ctrl-b arrow  move between panes
Ctrl-b H      move to pane on the left
Ctrl-b J      move to pane below
Ctrl-b K      move to pane above
Ctrl-b L      move to pane on the right
```

### Resizing Panes

```text
Ctrl-b Ctrl-Up       resize current pane up
Ctrl-b Ctrl-Down     resize current pane down
Ctrl-b Ctrl-Left     resize current pane left
Ctrl-b Ctrl-Right    resize current pane right
Ctrl-b Alt-Up        resize current pane up by 5
Ctrl-b Alt-Down      resize current pane down by 5
Ctrl-b Alt-Left      resize current pane left by 5
Ctrl-b Alt-Right     resize current pane right by 5
```

The arrow direction is the direction you want the pane edge to move. If resizing does nothing, the pane may already be against that outer edge or there may not be a neighboring pane in that direction.

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
- `prefix+H/J/K/L` moves between panes.
- Pane borders are hidden.
- Active pane paths in the tmux status window list.
- Pane paths in the `prefix+s` and `prefix+w` pickers.
