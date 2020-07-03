#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# broot alias
source /home/jacob/.config/broot/launcher/bash/br

# set default editor to neovim
export EDITOR=/bin/nvim
export VISUAL=/bin/nvim

# various aliases that will hopefully be replaced with automatic processes later
alias workman-p="setxkbmap -v workman-p && xset r 66"
alias x-setup="xmonad & && xmobar ~/.config/xmobar/xmobar.config &"

alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME' 
