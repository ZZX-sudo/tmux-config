#!/usr/bin/bash
release=`lsb_release -i`
path="~/tmux-vim-conf"

case "$release" in
    "Ubuntu")
        sudo apt update && sudo apt install python3-autopep8 flake8 python3-ipdb 
        ;;
    "Arch")
        sudo pacman -Syy flake8 autopep8 python-ipdb 
        ;;
esac

mkdir "$path" 
git clone https://github.com/ZZX-sudo/tmux-vim-config.git "$path" 

[[ -e "~/.vim.bk" ]] && echo "backup failure, please backup manually";exit
[[ -e "~/.vimrc" ]] && cp ~/.vim ~/.vim.bk
[[ -e "~/.tmux.conf.bk" ]] && echo "backup failure, please backup manually";exit
[[ -e "~/.tmux.conf" ]] && cp ~/.tmux.conf ~/.tmux.conf.bk
[[ -e "~/.vim.bk" ]] && echo "backup failure, please backup manually";exit

ln -s "$path/.vimrc" ~/
ln -s "$path/.tmux.conf" ~/
ln -s "$path/.tmux" ~/ 

