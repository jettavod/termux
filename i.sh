git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
clear
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
clear
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
clear
cat ~/termux/zshrcc > .zshrc
rm ~/termux/zshrcc
clear
echo "[*] - Модификация Termux завершена"
sleep 2
clear
echo "[*] - Настройка завершена. Перезагрузи Termux"
sleep 2
