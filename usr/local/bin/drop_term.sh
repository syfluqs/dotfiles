#!/bin/zsh

tmux new-session -s 'drop_term'
tmux attach-session -t 'drop_term'
tmux split-window -h 'tty-clock -C 4 -Sscbtn'
#tmux new-window 'drop_term'
tmux last-pane