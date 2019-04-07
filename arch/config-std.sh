#!/bin/bash
echo "Configuring"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
# scripts folder
mkdir ~/scripts
mkdir ~/scripts/.sfiles
echo "echo \"HENLO, THIS IS TEST SCRIPT. NICE TO MEET YOU.\"" > ~/scripts/test.sh
chmod +x ~/scripts/test.sh
cp other/zipdir ~/scripts/zipdir
chmod +x ~/scripts/zipdir
# xorg
mkdir ~/.config
cp std-confs/xinit-std.conf ~/.xinitrc
# i3
mkdir ~/.config/i3
cp std-confs/i3gaps-std.conf ~/.config/i3/config
# polybar
mkdir ~/.config/polybar
cp std-confs/run-poly-std.sh ~/.config/polybar/run-poly.sh
sudo chmod +x ~/.config/polybar/run-poly.sh
cp std-confs/polybar-std.conf ~/.config/polybar/config
cp other/pacupdatespolybar.sh ~/scripts/pacupdatespolybar.sh
cp other/pacupd.py ~/scripts/pacupd.py
echo "0" > ~/scripts/.sfiles/pacupd.txt
chmod +x ~/scripts/pacupdatespolybar.sh
# gtk theme
mkdir ~/.config/gtk-3.0
cp std-confs/gtk-std.css ~/.config/gtk-3.0/gtk.css
cp std-confs/gtk-settings-std.ini ~/.config/gtk-3.0/settings.ini
# compton
mkdir ~/.config/compton
cp std-confs/compton-std.conf ~/.config/compton/compton.conf
# zsh/bash
cp std-confs/zshrc-std.conf ~/.zshrc
cp std-confs/cody-std.zsh-theme ~/.oh-my-zsh/themes/cody.zsh-theme
cp std-confs/zprofile-std.conf ~/.zprofile
chsh -s $(which zsh)
# zsh-syntax-highlighter plugin
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
cd $parent_path
cp std-confs/main-highlighter-std.zsh ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/highlighters/main/main-highlighter.zsh
# vim
cp std-confs/vim-std.conf ~/.vimrc
# to select right audio device(smsl m3 dac for me)
cp std-confs/asoundrc-std.conf ~/.asoundrc
# profile
cp std-confs/profile-std.conf ~/.profile
# background
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
