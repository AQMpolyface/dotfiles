export ZSH="$HOME/.oh-my-zsh"

plugins=(golang)
source $ZSH/oh-my-zsh.sh


export Desktop=/home/polyface/Desktop/
export git="/home/polyface/Desktop/git/"
export go="/home/polyface/Desktop/go/"
export EDITOR='/home/polyface/.local/bin/lvim'
export PATH=$PATH:/home/polyface/.local/bin:/home/polyface/.cabal/bin

#source /usr/share/cachyos-zsh-config/cachyos-config.zsh
#source /home/polyface/.config/zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
#source /home/polyface/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /home/polyface/.config/zsh/dracula-theme.zsh
source /home/polyface/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(oh-my-posh init zsh --config /home/polyface/.config/zsh/catppuccin_macchiato.omp.json)"

alias audio=pavucontrol
alias ="fastfetch"  
alias h="hoogle"
alias loff="headsetcontrol -l 0"
alias R="paru -R"
alias c="clear"
alias S="paru -S"
alias s="paru -s"
alias Syu="paru -Syu"
alias qi="paru -Qi"
alias lvim="/home/polyface/.local/bin/lvim"
#alias slvim ="sudo /home/polyface/.local/bin/lvim"
alias auto="/home/polyface/Desktop/auto.sh"
alias zed="zeditor"
alias torb="sh -c '"/home/polyface/Desktop/programs/tor-browser/Browser/start-tor-browser" --detach || ([ !  -x "/home/polyface/Desktop/programs/tor-browser/Browser/start-tor-browser" ] && "$(dirname "$*")"/Browser/start-tor-browser --detach)' dummy %k"


source /home/polyface/.ghcup/env
[ -f "/home/polyface/.ghcup/env" ] && . "/home/polyface/.ghcup/env" # ghcup-env
export LD_LIBRARY_PATH=/home/polyface/.local/lib/arch-mojo:$LD_LIBRARY_PATH

# dunc aliases
office() {
    soffice --writer "$1" &
}

slvim() {
  sudo /home/polyface/.local/bin/lvim "$1"
}

