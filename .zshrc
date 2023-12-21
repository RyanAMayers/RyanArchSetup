# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ryan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval $(thefuck --alias)
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# RYAN'S EDITS
#
# ALIASES

alias confzsh="nvim ~/.zshrc"
alias confi3="nvim ~/.config/i3/config"
alias confpicom="nvim ~/.config/picom/picom.conf"
alias confi3blocks="nvim ~/.config/i3blocks/i3blocks.conf"
alias confAlacritty="nvim ~/.config/alacritty/alacritty.yml"
alias confNvim="nvim ~/.config/nvim/init.vim"
alias ex="/usr/bin/exa -lhFa --icons"
alias sc="ls ~/scripts"
alias cdsc="cd ~/scripts"
alias cdconf="cd ~/.config"
alias v="nvim"

# Add scripts folder to $PATH

export PATH="$HOME/scripts:$PATH"

# set desktop background because i3 refuses to fucking do it for some reason

feh --bg-fill ~/Images/bg.jpg
source /usr/share/nvm/init-nvm.sh

# Export SSH env variable

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
