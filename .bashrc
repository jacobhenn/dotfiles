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

# add local binaries to path
export PATH=/home/jacob/.local/bin:$PATH

# i want fish not bash
export SHELL=/bin/fish

# various aliases that will hopefully be replaced with automatic processes later
alias workman-p='sudo loadkeys /usr/local/share/kbd/keymaps/workman-p.iso15.kmap'

alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# prompt the user if they want to auto-start a graphical environment or drop back into the tty
while true; do
    read -p "Auto-start the graphical environment (y/n)? " yn
    case $yn in
        [Yy]* ) startx; break;;
        [Nn]* ) echo "You are being dropped into a tty. Enter the graphical environment at any time by typing startx."; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
