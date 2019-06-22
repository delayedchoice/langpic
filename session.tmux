# START:new
tmux new-session -s langpic -n editor -d
# END:new
# START:cd
# END:cd
#tmux send-keys -t langpic 'cd ~/devproject' C-m
# START:vim
tmux send-keys -t langpic 'n' C-m
# END:vim
# START:hsplit
tmux split-window -v -t langpic
tmux selectp -t 2 
# END:hsplit
# START:layout
tmux select-layout -t langpic main-horizontal
# END:layout
# START:keystopane
#tmux send-keys -t langpic:1.2 'cd ~/devproject' C-m
# END:keystopane
# START:newwindow
tmux new-window -n console -t langpic
tmux send-keys -t langpic 'lein repl' C-m
#tmux send-keys -t langpic:2 'cd ~/devproject' C-m
# END:newwindow
# START:selectwindow
tmux select-window -t langpic:1
# END:selectwidow
tmux attach -t langpic
