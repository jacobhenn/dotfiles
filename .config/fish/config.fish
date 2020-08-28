eden_toggle_path

abbr -a -g config git --git-dir=$HOME/dotfiles --work-tree=$HOME
abbr -a -g pac sudo pacman -S
abbr -a -g bat acpi -i
abbr -a -g bright sudo light -S
abbr -a -g daemon systemctl enable --now
abbr -a -g vol sudo alsamixer -c1
abbr -a -g episode nvim ~/documents/episodes.txt
abbr -a -g testmic arecord -vvv -f dat /dev/null
abbr -a -g mailsync mbsync personal
abbr -a -g cab cabal install --ghc-option=-dynamic
abbr -a -g brick ghc --make -O2 -optc-O3 -dynamic -threaded
abbr -a -g hscomp ghc --make -O2 -optc-O3 -dynamic -fwarn-missing-signatures
abbr -a -g pathadd set -Ua fish_user_paths
abbr -a -g pathdel set --erase --universal fish_user_paths[1]
abbr -a -g e nvim
