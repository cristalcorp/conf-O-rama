#!/bin/sh

current_dir=$(pwd)

ln -s $current_dir/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -s $current_dir/zsh/zshrc ~/.zshrc
ln -s $current_dir/oh-my-zsh ~/.oh-my-zsh
ln -s $current_dir/hypr ~/.config/
ln -s $current_dir/waybar ~/.config/waybar
