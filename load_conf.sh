#!/bin/sh

current_dir=$(pwd)

mkdir -p ~/.config/tmux

ln -sf $current_dir/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf $current_dir/zsh/zshrc ~/.zshrc
ln -sf $current_dir/oh-my-zsh ~/.oh-my-zsh
ln -sf $current_dir/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -sf $current_dir/waybar ~/.config/waybar
