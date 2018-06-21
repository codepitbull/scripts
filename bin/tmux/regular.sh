#!/bin/bash
tmux -CC new-session \; \
  split-window -h -p 30 \; \
  send-keys 'top' C-m \; \
  select-pane -t 1 \; \
  split-window -v \; \
  send-keys 'vi /Volumes/GoogleDrive/Meine\ Ablage/term-notes.md' C-m \; \
