# This tmux statusbar config was created by tmuxline.vim

set -g status-interval 60
set -g status-bg "default"
set -g message-command-fg "colour2"
set -g status-justify "centre"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour2"
set -g message-bg "black"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour2"
set -g message-command-bg "black"
set -g status-attr "none"
set -g pane-border-fg "black"
set -g status-left-attr "none"
setw -g window-status-fg "colour2"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour233"
setw -g window-status-activity-attr "underscore"
setw -g window-status-activity-fg "colour2"
setw -g window-status-separator ""
setw -g window-status-bg "colour233"
set -g status-left "#[fg=colour232,bg=colour2] #(whoami) #[fg=colour2,bg=black,nobold,nounderscore,noitalics]#[fg=colour2,bg=black] #(echo \"level:$SHLVL\") #[fg=black,bg=colour233,nobold,nounderscore,noitalics]#[fg=colour2,bg=colour233] pane:#P #{?client_prefix,#[fg=cyan]^S,} #[fg=colour233,bg=colour233,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour233,bg=colour233,nobold,nounderscore,noitalics]#[fg=colour2,bg=colour233] #(ifconfig en0 | grep 'inet ' | awk '{ printf $2 } END { if (!NR) print \"no-wifi\" }') #[fg=black,bg=colour233,nobold,nounderscore,noitalics]#[fg=colour2,bg=black] #[fg=red]#{battery_percentage} #[fg=blue]#{battery_remain} #[fg=colour2,bg=black,nobold,nounderscore,noitalics]#[fg=colour232,bg=colour2] %H:%M "
setw -g window-status-format "#[fg=colour233,bg=colour233,nobold,nounderscore,noitalics]#[default] #I #W #[fg=colour233,bg=colour233,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=colour233,bg=black,nobold,nounderscore,noitalics]#[fg=colour2,bg=black] [#W] #[fg=black,bg=colour233,nobold,nounderscore,noitalics]"
