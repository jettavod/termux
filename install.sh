#!/data/data/com.termux/files/usr/bin/bash

put="/data/data/com.termux/files/usr/etc/motd"
echo>$put
for text in "Welcome to Termux!" " "
do
        echo $text >> $put
done
prog="git zsh curl wget tmux php python python2 openssh"
for app in $prog
do
	echo "[*] - Установка $app"
	sleep 2
	clear
        pkg install -y $app
        clear
        echo "[*] - $app установлен"
        sleep 2
        clear
done
echo "[*] - Установка фона и шрифта"
sleep 2
clear
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
clear
echo "[*] - Фон и шрифт установлены"
sleep 2
clear
mkdir $HOME/.termux
clear
echo "[*] - Установка extra-keys"
sleep 2
clear
echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" > $HOME/.termux/termux.properties
termux-reload-settings
echo "[*] - extra-keys - установлен"
sleep 2
clear
for pipp in bpython ipython
do
	echo "[*] - Установка $pipp"
        sleep 2
        clear
	pip install $pipp
	clear
	echo "[*] - $pipp установлен"
	sleep 2
	clear
done
echo "[*] - Обновление PIP"
sleep 2
clear
/data/data/com.termux/files/usr/bin/python3 -m pip install --upgrade pip
clear
echo "[*] - PIP обновлен"
sleep 2
clear
echo "[*] - Установка ADB"
sleep 2
clear
wget https://github.com/MasterDevX/Termux-ADB/raw/master/InstallTools.sh -q && bash InstallTools.sh
clear
echo "[*] - ADB установлен"
sleep 2
clear
echo "[*] - Модификация Termux"
sleep 2
clear
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
echo "[*] - Модификация Termux завершена"
sleep 2
clear
echo "[*] - Настройка завершена. Перезагрузи Termux"
sleep 2
