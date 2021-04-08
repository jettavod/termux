#!/data/data/com.termux/files/usr/bin/bash
put="/data/data/com.termux/files/usr/etc/motd"
echo>$put
for text in "Welcome to Termux!" " "
do
        echo $text >> $put
done
for app in zsh curl wget tmux php python python2 openss>
do
        pkg install $app -y
        clear
        echo "[*] - $app установлен"
        sleep 3
        clear
done
echo "extra-keys = [['ESC','/','-','HOME','UP','END','P>
termux-reload-settings
echo "[*] - extra-keys - установлен"
sleep 3
clear
