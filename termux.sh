#!/data/data/com.termux/files/usr/bin/bash
echo >/data/data/com.termux/files/usr/etc/motd
echo "" >/data/data/com.termux/files/usr/etc/motd
echo "Welcome to Termux!" >>/data/data/com.termux/files/usr/etc/motd
echo "" >>/data/data/com.termux/files/usr/etc/motd
apt update -y
clear
apt upgrade -y
clear
apt install -y git zsh curl wget tmux php python python2 openssh
clear
pip install bpython ipython
clear
/data/data/com.termux/files/usr/bin/python3 -m pip install --upgrade pip
clear
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
termux-reload-settings
mkdir $HOME/.termux
clear
echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" > $HOME/.termux/termux.properties
termux-reload-settings

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
clear
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
clear
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
clear
echo "" > .zshrc
wget https://raw.githubusercontent.com/jettavod/hydravdk/main/zshrcc
cat zshrcc > .zshrc
rm zshrcc
clear
wget https://github.com/MasterDevX/Termux-ADB/raw/master/InstallTools.sh -q && bash InstallTools.sh
git clone https://github.com/Ranginang67/DarkFly-Tool && cd DarkFly-Tool && chmod +x install.py && python2 install.py && clear && echo "Теперь можно набрать DarkFly"
rm termux.sh
exit
