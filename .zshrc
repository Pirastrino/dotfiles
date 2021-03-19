# PATHS
export ZSH="/home/martin/.oh-my-zsh"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export DENO_INSTALL="/home/martin/.deno"
export PATH=$PATH:$HOME/.local/bin
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$PATH:/mnt/c/Program Files/Onivim2"

# Powerline configuration
if [ -f $HOME/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh ]; then
    $HOME/.local/bin/powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    source $HOME/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
fi

ZSH_THEME="robbyrussell"

plugins=(
  git
  z
)

bindkey -v

source $ZSH/oh-my-zsh.sh

# Git
alias master="git checkout master"
alias main="git checkout main"
alias pull="git pull --ff-only origin"
alias co="git checkout"

# Other
alias vim="nvim"
alias tm="tmux"
alias ta="tmux attach -t"
alias lla="ls -lsah | lolcat"
alias oni="oni2.exe"
alias cl="clear"
alias vreset="rm -rf ~/.local/share/verdaccio"
alias vpn="sudo openfortivpn -c ~/.config/openfortivpn/config -v"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias y="yarn"
