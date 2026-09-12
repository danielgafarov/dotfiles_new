#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#Added by daniel
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export EDITOR=/bin/nvim
export TERMINAL=/bin/kitty
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
source /usr/share/nvm/init-nvm.sh
# Added by Android CLI installer
export PATH="$PATH:/home/daniel/.local/bin"
