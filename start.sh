#!/usr/bin/env bash

path="${HOME}/tmux-vim-conf"
if [[ -d "$path" ]];then
    mv "$path" "$path"_bak
fi
mkdir "$path" 
git clone https://github.com/ZZX-sudo/tmux-vim-config.git "$path" 


[[ -e "${HOME}/.tmux.conf" ]] && {
   cp ~/.tmux.conf ~/.tmux.conf.bk
}

ln -s "$path/.tmux.conf" ~/
ln -s "$path/.tmux" ~/
