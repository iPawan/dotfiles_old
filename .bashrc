#set the default to vi for editor
set -o vi
# change the prompt to something respectible
export PS1="\W @ \h (\u) \$ "
export PATH=$PATH:/usr/local/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
