if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/local" ] ; then
  PATH="$PATH:$HOME/local"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "/mnt/c/Users/$USER" ] ; then
  W="/mnt/c/Users/$USER"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -d "$HOME/.deno/bin" ] ; then
  PATH="$PATH:$HOME/.deno/bin"
fi

if [ -d "$HOME/local/texlive/bin/x86_64-linux" ] ; then
  PATH="$PATH:$HOME/local/texlive/bin/x86_64-linux"
fi

# ctrl G gives quick git status
bind -x '"\a": git status -bs 2> /dev/null'

export GPG_TTY=$(tty)

# Two line prompt.
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\n$ "
