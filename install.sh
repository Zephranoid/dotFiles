#!/bin/bash
dir=$(pwd)/$1
echo $dir
ln -sf $dir/i3/config ~/.config/i3/config
ln -sf $dir/polybar/config ~/.config/polybar/config
ln -sf $dir/compton/compton.conf ~/.config/compton/compton.conf
ln -sf $dir/dunst/dunstrc ~/.config/dunst/dunstrc
ln -sf $dir/qutebrowser/config.py ~/.config/qutebrowser/config.py
ln -sf $dir/rofi/config ~/.config/rofi/config
ln -sf $dir/termite/config ~/.config/termite/config
ln -sf $dir/background.jpg ~/background.jpg
