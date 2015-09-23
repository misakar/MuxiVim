# !/bin/bash

# ===================
#
#   n-vim  安装脚本
#
# ===================

# 开始安装
echo "starting install n-vim!"
cd ~

echo "\n"

# .vim
echo "making .vim"
cp -r ~/n-vim/ ~/.vim

# .vimrc
echo "making .vimrc"
cp -r ~/n-vim/ ~/.vimrc

echo " =============================================================================="
echo " This is my vim file"
echo " ref -> https://github.com/mbrochh/vim-as-a-python-ide"
echo "@neo1218 2015y 9m 17d"
echo " version: 1.0"
echo " =============================================================================="
echo " ||  ||  ||====   ||     ||     |====|   O    neo1218"
echo " ||==||  ||===    ||     ||     |    |  |||           vim on mac for python !"
echo " ||  ||  ||====   ||__|  ||__|  |====|  \ /     vim"
echo " =============================================================================="
