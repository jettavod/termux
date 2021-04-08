#!/data/data/com.termux/files/usr/bin/bash


echo >/data/data/com.termux/files/usr/etc/motd
echo "" >/data/data/com.termux/files/usr/etc/motd
echo "Welcome to Termux!" >>/data/data/com.termux/files/usr/etc/motd
echo "" >>/data/data/com.termux/files/usr/etc/motd
apt update -y
clear
echo "Обновлено"
sleep 3
clear
apt install -y zsh curl wget tmux php python python2 openssh
clear
echo "Установлено [zsh curl wget tmux php python python2 openssh]"
sleep 3
clear
pip install bpython ipython
echo "Установлено [bpython ipython]"
sleep 3
clear
/data/data/com.termux/files/usr/bin/python3 -m pip install --upgrade pip
echo "Обновлено [pip]"
sleep 3
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
cat ~/termux/zshrcc > .zshrc
rm ~/termux/zshrcc
clear
wget https://github.com/MasterDevX/Termux-ADB/raw/master/InstallTools.sh -q && bash InstallTools.sh
git clone https://github.com/Ranginang67/DarkFly-Tool && cd DarkFly-Tool && chmod +x install.py && python2 install.py && clear && echo "Теперь можно набрать DarkFly"
rm ~/hydravdk/termux.sh
exit
