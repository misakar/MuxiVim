#!/bin/sh

echo "\033[32m(ง •_•)ง =>\033[0m update neovim"
if [ ! -d "~/.config" ]; then
    mkdir ~/.config
    mkdir ~/.config/nvim
fi
cp ~/muxivim/init.vim ~/.config/nvim
cp -rf ~/muxivim/nvim/autoload ~/.config/nvim
cp -rf ~/muxivim/nvim/colors ~/.config/nvim

echo "\033[32m(ง •_•)ง =>\033[0m Install Extensions"
nvim +PlugInstall +q!

echo "\033[32m(ง •_•)ง =>\033[0m Config MuxiVim Done!"
