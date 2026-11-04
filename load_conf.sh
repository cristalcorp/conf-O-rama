#!/bin/sh

current_dir=$(pwd)

mkdir -p ~/.config/tmux

ln -sf $current_dir/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf $current_dir/zsh/zshrc ~/.zshrc
ln -sfn $current_dir/oh-my-zsh ~/.oh-my-zsh
# hypr: own repo, git clone git@github.com:cristalcorp/hypr.git ~/.config/hypr
ln -sfn $current_dir/waybar ~/.config/waybar
