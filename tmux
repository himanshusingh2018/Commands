tmux ls #list tmux sessions activated
tmux new-session -s <session-name> #e.g. tmux new-session -s pnet; new session name pnet is started
tmux attach-session -t lc # tmux attach already running session name 'lc'
CRTL + b ---> d    #press crtl + b leave then press d; will return to regular shell, session will be running in background.
#run two tmux panel side by side
tmux new-session -s session1 #step 1: it opens session1
CRTL + b ---> % #step 2: it divide terminal vertically in two section
CRTL + b ---> " #step 2: it divide terminal horizontally in two section
unset TMUX #step 3: unset tmux
tmux new-session -s session2 #step 4: it opens session2
CRTL + b ---> use arrow key #move cursor left (<--) or any of four directions 
