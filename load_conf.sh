#!/bin/sh

current_dir=$(pwd)

mkdir -p ~/.config/tmux

ln -sf $current_dir/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf $current_dir/zsh/zshrc ~/.zshrc
ln -sfn $current_dir/oh-my-zsh ~/.oh-my-zsh
# hypr: own repo, git clone git@github.com:cristalcorp/hypr.git ~/.config/hypr
ln -sfn $current_dir/waybar ~/.config/waybar
ln -sfn $current_dir/mpv ~/.config/mpv
# herdr: install with the official script (curl -fsSL https://herdr.dev/install.sh | sh),
# then: herdr integration install claude ; herdr config check
mkdir -p ~/.config/herdr
ln -sf $current_dir/herdr/config.toml ~/.config/herdr/config.toml
