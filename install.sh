# !/bin/bash

# ===================
#
#   n-vim  安装脚本
#
# ===================

# 开始安装
echo "----starting install n-vim!----"
cd ~
echo "\n"


# .vim
echo "----making .vim----"
cp -r ~/n-vim/ ~/.vim


# .vimrc
echo "----making .vimrc----"
cp  ~/n-vim/ ~/.vimrc


# 安装插件
echo "----插件安装----"
cd ~/.vim/bundle/

echo "安装vim-powerline"
git clone https://github.com/Lokaltog/vim-powerline
echo "install vim-powerline done !\n"

echo "安装ctrlp"
git clone https://github.com/kien/ctrlp.vim
echo "install ctrlp done !\n"

echo "jedi-vim"
git clone https://github.com/davidhalter/jedi-vim
echo "install jedi-vim done !\n"

echo "vim-minimap"
git clone http://github.com/severin-lemaignan/vim-minimap
echo "install vim-minimap done !\n"

echo "neocomplete.vim"
git clone https://github.com/Shougo/neocomplete.vim.git
echo "install neocomplete.vim done! \n"

echo "nerdtree"
https://github.com/scrooloose/nerdtree
echo "install nerdtree done! \n"

echo "----install done!----"


echo " =============================================================================="
echo " |                                 n-vim                                      |"
echo " |          ref -> https://github.com/mbrochh/vim-as-a-python-ide             |"
echo " |                         @neo1218 2015y 9m 17d                              |"
echo " |                              version: 1.0                                  |"
echo " =============================================================================="
echo " ||  ||  ||====   ||     ||     |====|   O    neo1218                         |"
echo " ||==||  ||===    ||     ||     |    |  |||           vim on mac for python ! |"
echo " ||  ||  ||====   ||__|  ||__|  |====|  \ /     vim                           |"
echo " =============================================================================="
