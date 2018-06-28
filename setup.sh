#!/bin/sh

omz=~/.oh-my-zsh

# install for oh-my-zsh
if [[ ! -d  $omz ]];then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "oh-my-zsh install success!"
fi

# install theme for oh-my-zsh
if [[  ! -d  $omz/custom/themes/powerlevel9k ]];then
    git clone https://github.com/bhilburn/powerlevel9k.git $omz/custom/themes/powerlevel9k
else
    echo "themes install success!"
fi

cp ./.zshrc   ~/.zshrc
cp ./.tmux.conf   ~/.tmux.conf
cp ./.todo.cfg   ~/.todo.cfh
source ~/.zshrc








