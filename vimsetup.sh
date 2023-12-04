#!/bin/bash
sudo apt-get update
sudo apt-get install vim -y
cd
mkdir .vim
mkdir .vim/bundle .vim/autoload .vim/colors
cd
sudo apt-get install curl -y
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd
touch .vimrc
echo "execute pathogen#infect()" > .vimrc
echo "syntax on" >> .vimrc
echo "filetype plugin indent on" >> .vimrc
echo "set number" >> .vimrc
echo "set omnifunc=phpcomplete#CompletePHP" >> .vimrc
sudo apt-get install git -y
cd .vim/bundle
clear
git clone https://github.com/mattn/emmet-vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/syntastic
echo "VIM is installed with the following plugins:"
echo "NERDTree, emmet-vim, syntastic"
