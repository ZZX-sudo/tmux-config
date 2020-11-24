#!/usr/bin/bash
release=`lsb_release -i | awk '{print $3}'`
path="${HOME}/tmux-vim-conf"

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
git clone https://github.com/VundleVim/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"

[[ -e "${HOME}/.vim.bk" ]] && {echo "backup failure, please backup manually";exit}
[[ -e "${HOME}/.vimrc" ]] && cp ~/.vim ~/.vim.bk
[[ -e "${HOME}/.tmux.conf.bk" ]] && {echo "backup failure, please backup manually";exit}
[[ -e "${HOME}/.tmux.conf" ]] && cp ~/.tmux.conf ~/.tmux.conf.bk
[[ -e "${HOME}/.vim.bk" ]] && {echo "backup failure, please backup manually";exit}

ln -s "$path/.vimrc" ~/
ln -s "$path/.tmux.conf" ~/
ln -s "$path/.tmux" ~/

vim +PluginInstall
