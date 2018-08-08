if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/local" ] ; then
  PATH="$PATH:$HOME/local"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$PATH:$HOME/.local/bin"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ctrl G gives quick git status
bind -x '"\a": git status -bs 2> /dev/null'

export GPG_TTY=$(tty)
