tmux ls #list tmux sessions activated
tmux new-session -s <session-name> #e.g. tmux new-session -s pnet; new session name pnet is started
tmux attach-session -t lc # tmux attach already running session name 'lc'
CRTL + b ---> d    #press crtl + b leave then press d; will return to regular shell, session will be running in background.
