# Title:          tmux.conf
#	Description:    Configuration file for the terminal multiplexer tmux.
# Author:         Fontaine Cook <fontaine.cook@pearance.com>
# Maintainer:     Fontaine Cook <fontaine.cook@pearance.com>
#	Last Modified: Wed Oct 24, 2012  05:30PM
#------------------------------------------------------------------------------

# TODO: http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/
# TODO: http://bombayrain.posterous.com/tmux-and-vim-configuration
# TODO: https://gist.github.com/721200
# TODO: http://robots.thoughtbot.com/post/2641409235/a-tmux-crash-course
# TODO: http://tonkersten.com/2011/07/104-switching-to-tmux/
# TODO: http://mutelight.org/articles/practical-tmux
# TODO: http://cheasy.org/tmux.pdf



# GENERAL SETTINGS: {{{
#*****************************************************************************

# Terminal Environment
set   -sg escape-time 0
set   -g  terminal-overrides 'xterm*:smcup@:rmcup@'
set   -g  default-terminal screen
set   -g  visual-bell off
set   -g  mouse-select-pane off #
set   -g  default-terminal "screen-256color"
set   -g  history-limit 10000
set   -g  repeat-time 1000
set   -g  base-index 1
set   -g  set-titles on
set   -g  set-titles-string 'Tmux #I:#W '
set   -g  visual-activity on
set   -g  monitor-activity on
set   -g  bell-action none
set   -g  prefix M-a
set   -g  buffer-limit 500
set   -g default-shell /bin/zsh
#-------------------------------------------------------------------------------









# }}}
# KEY-BINDINGS: {{{
#*****************************************************************************

# Unbind the Unnecessary
unbind C-b
unbind C-o
unbind C-z
unbind c
unbind f
unbind i
unbind l
unbind n
unbind p
unbind o
unbind q
unbind r
unbind t
unbind w
unbind !
unbind ,
unbind %
unbind '$'
unbind '#'
unbind ?
unbind :
unbind [
unbind ]
unbind {
unbind }
unbind =
unbind '"'
unbind "'"
unbind 0
unbind 1
unbind 2
unbind 3
unbind 4
unbind 5
unbind 6
unbind 7
unbind 8
unbind 9
unbind C-Left
unbind C-Down
unbind C-Up
unbind C-Right
unbind PPage
#-------------------------------------------------------------------------------



# Prefix Key
unbind M-a
bind   M-a    send-prefix
#-------------------------------------------------------------------------------



# Reload/Refresh
unbind M-r    ; bind -n   M-r     source-file ~/.tmux.conf
unbind M-R    ; bind -n   M-R     refresh-client
#-------------------------------------------------------------------------------



# List Key Bindings
unbind M-?    ; bind -n   M-?     list-keys



# New Window
unbind M-t    ; bind -n   M-t     new-window
#-------------------------------------------------------------------------------



# Rename Window
unbind M-n    ; bind -n   M-n     command-prompt -p "Rename #W" "rename-window %%"
#-------------------------------------------------------------------------------



# Window Navigation
                bind      M-a     last-window
unbind M-`    ; bind -n   M-`     next-window
unbind M-~    ; bind -n   M-~     previous-window
unbind M-1    ; bind -n   M-1     select-window -t 1
unbind M-2    ; bind -n   M-2     select-window -t 2
unbind M-3    ; bind -n   M-3     select-window -t 3
unbind M-4    ; bind -n   M-4     select-window -t 4
unbind M-5    ; bind -n   M-5     select-window -t 5
unbind M-6    ; bind -n   M-6     select-window -t 6
unbind M-7    ; bind -n   M-7     select-window -t 7
unbind M-8    ; bind -n   M-8     select-window -t 8
unbind M-9    ; bind -n   M-9     select-window -t 9
unbind M-0    ; bind -n   M-0     select-window -t 10
#-------------------------------------------------------------------------------



# Window Searching
unbind M-/    ; bind -n   M-/     command-prompt -p "/" "find-window %%"



# Window Spliting
unbind v      ; bind -n   M-v     split-window -h
unbind h      ; bind      h       split-window -v
#-------------------------------------------------------------------------------



# Window Pane Navigation
unbind M-Left ; bind -n   M-Left  select-pane -L
unbind M-Down ; bind -n   M-Down  select-pane -D
unbind M-Up   ; bind -n   M-Up    select-pane -U
unbind M-Right; bind -n   M-Right select-pane -R
#-------------------------------------------------------------------------------



# Window Pane Navigation (Vim alternate)
unbind M-h    ; bind -n   M-h     select-pane -L
unbind M-j    ; bind -n   M-j     select-pane -D
unbind M-k    ; bind -n   M-k     select-pane -U
unbind M-l    ; bind -n   M-l     select-pane -R
#-------------------------------------------------------------------------------



# Resize Window Panes
unbind Left   ; bind -r   Left    resize-pane -L 3
unbind Down   ; bind -r   Down    resize-pane -D 3
unbind Up     ; bind -r   Up      resize-pane -U 3
unbind Right  ; bind -r   Right   resize-pane -R 3
#-------------------------------------------------------------------------------



# Resize Window Panes (Vim alternate)
unbind M-H    ; bind -nr  M-H     resize-pane -L 3
unbind M-J    ; bind -nr  M-J     resize-pane -D 3
unbind M-K    ; bind -nr  M-K     resize-pane -U 3
unbind M-L    ; bind -nr  M-L     resize-pane -R 3
#-------------------------------------------------------------------------------



# Swap Windows
unbind M-x    ; bind -n   M-x     swap-pane -Ud
unbind M-X    ; bind -n   M-X     swap-pane -Dd
#-------------------------------------------------------------------------------



# Copy Mode
unbind M-c    ; bind -n   M-c     copy-mode
unbind M-p    ; bind -n   M-p     paste-buffer
unbind M-P    ; bind -n   M-P     choose-buffer
unbind M-PPage; bind -n   M-PPage copy-mode -u
unbind -t vi-copy v   ; bind -t vi-copy v  begin-selection
unbind -t vi-copy y   ; bind -t vi-copy y  copy-selection
unbind -t vi-copy C-V ; bind -t vi-copy C-V  rectangle-toggle
unbind -t vi-copy o
unbind -t vi-copy V
#-------------------------------------------------------------------------------



# Break Out Window Panes
unbind M-b    ; bind -n   M-b     break-pane
#-------------------------------------------------------------------------------



# Man Page in New Pane or Window
unbind M-m    ; bind -n   M-m     command-prompt -p "Man page (new window pane):" "split-window -h 'exec man %%'"
unbind M-M    ; bind -n   M-M     command-prompt -p "Man page (new window):" "new-window -n 'man %1' 'exec man %1'"
#-------------------------------------------------------------------------------



# HTOP in Split Window
bind  "~" split-window "exec htop"
#-------------------------------------------------------------------------------



# SSH to Host
bind  -n  M-S command-prompt -p "ssh to:" "new-window -n %1 'ssh %1'"
#-------------------------------------------------------------------------------



# Command Prompt
unbind M-\;         ; bind -n     M-\;      command-prompt -p "tmux:"
#-------------------------------------------------------------------------------



# Choose Session
unbind M-S          ; bind        M-S       choose-session
#-------------------------------------------------------------------------------



# Rename Session
unbind M-N          ; bind -n     M-N     command-prompt -p "Rename #S" "rename-session %%"
#-------------------------------------------------------------------------------



# Detach Client
unbind M-d          ; bind -n     M-d       detach-client
#-------------------------------------------------------------------------------









# }}}
# WINDOWS: {{{
#*******************************************************************************

# Use UTF-8 character set
setw  -g  utf8 on
#-------------------------------------------------------------------------------



# Vi like Bindings
setw  -g  mode-keys vi
#-------------------------------------------------------------------------------



# Xterm style function key sequences.
setw  -g  xterm-keys on
#-------------------------------------------------------------------------------



# Aggressive Resize.
setw  -g  aggressive-resize on
#-------------------------------------------------------------------------------



# Automatic Naming (Window Tabs)
setw  -g  automatic-rename on
#-------------------------------------------------------------------------------


# Mode Mouse
setw  -g  mode-mouse on
#-------------------------------------------------------------------------------



# Clock Mode Style
setw  -g  clock-mode-style 12
#-------------------------------------------------------------------------------



# Deactivate windows to later be respawned.
setw  -g  remain-on-exit off
#-------------------------------------------------------------------------------









# }}}
# STATUS/COMMAND/MESSAGE LINE: {{{
#*******************************************************************************

# Status Line Settings
set   -g  status-interval 60
set   -g  status-keys emacs
set   -g  status-utf8 on
#-------------------------------------------------------------------------------



# Status Line Message Settings
set   -g  display-time 2000
#-------------------------------------------------------------------------------



# Toggle Status Bar
bind  s   set status
#-------------------------------------------------------------------------------



# Left Side Status Bar

set   -g  status-left ' #[fg=white]#S#[bg=black,fg=magenta,dim]:Shelltopia#[fg=white] |'
set   -g  status-left-length 30
#-------------------------------------------------------------------------------



# Window Status Tabs
setw  -g  window-status-format ' #I:#W#F '
setw  -g  window-status-current-format ' #I:#W#F '



# Right Side Status Bar
set   -g  status-right '#[fg=white]#[fg=magenta]%I:%M %p #[fg=white]|#[fg=magenta] %h-%d-%Y#[default]#[fg=white] '
#-------------------------------------------------------------------------------










# }}}
# COLOR SCHEME: {{{
#*******************************************************************************
# Status Line Defaults
set   -g  status-fg white
set   -g  status-bg black
set   -g  status-attr bright
#-------------------------------------------------------------------------------



# Active Window Tab
setw  -g  window-status-current-fg default
setw  -g  window-status-current-bg magenta
setw  -g  window-status-current-attr bright
#-------------------------------------------------------------------------------



# Inactive Window Tabs
setw  -g  window-status-fg default
setw  -g  window-status-bg default
setw  -g  window-status-attr bright
#-------------------------------------------------------------------------------



# Alerted Window Tabs
setw  -g  window-status-alert-fg default
setw  -g  window-status-alert-bg magenta
#-------------------------------------------------------------------------------



# Modes
setw  -g  mode-fg white
setw  -g  mode-bg magenta
setw  -g  mode-attr bright
setw  -g  clock-mode-colour magenta
#-------------------------------------------------------------------------------



# Status Messages
set   -g  message-bg magenta
set   -g  message-fg white
#-------------------------------------------------------------------------------



# Window Pane Numbers
set   -g  display-panes-active-colour magenta
set   -g  display-panes-colour white
#-------------------------------------------------------------------------------


# Window Pane Borders
set   -g  pane-border-fg black
set   -g  pane-border-bg black
set   -g  pane-active-border-fg colour238
set   -g  pane-active-border-bg colour234
#-------------------------------------------------------------------------------
# }}}



# source-file ~/.tmux.conf

# vim:ft=tmux:fdm=marker:
