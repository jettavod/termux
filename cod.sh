#!/data/data/com.termux/files/usr/bin/bash
echo >/data/data/com.termux/files/usr/etc/motd
echo "" >/data/data/com.termux/files/usr/etc/motd
echo "Welcome to Termux!" >>/data/data/com.termux/files/usr/etc/motd
echo "" >>/data/data/com.termux/files/usr/etc/motd
apt update -y
apt upgrade -y
apt install -y git zsh curl wget tmux
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
termux-reload-settings
mkdir $HOME/.termux
echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" > $HOME/.termux/termux.properties
termux-reload-settings

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
echo "" > .zshrc
wget https://raw.githubusercontent.com/jettavod/hydravdk/main/Tekst.txt
cat Tekst.txt > .zshrc
rm Tekst.txt
