export ZSH="$HOME/.oh-my-zsh"

plugins=(golang)
source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
 export EDITOR='nvim'
 fi
#source /usr/share/cachyos-zsh-config/cachyos-config.zsh
source /home/polyface/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/polyface/.config/zsh/dracula-theme.zsh
eval "$(oh-my-posh init zsh --config /home/polyface/.config/zsh/catppuccin_macchiato.omp.json)"

export git="/home/polyface/Desktop/git/"


alias loff="headsetcontrol -l 0"
alias R="paru -R"
alias c="clear"
alias S="paru -S"
alias s="paru -s"
alias Syu="paru -Syu"
alias lvim="/home/polyface/.local/bin/lvim"
#alias slvim ="sudo /home/polyface/.local/bin/lvim"
alias ...="../../"
alias auto="/home/polyface/Desktop/auto.sh"
alias zed="zeditor"
source /home/polyface/.ghcup/env
[ -f "/home/polyface/.ghcup/env" ] && . "/home/polyface/.ghcup/env" # ghcup-env