#!/bin/bash

function install() {
	echo $1
	{
		$2
	} &> /dev/null
}

echo "Start installer"
echo
sleep 0.5

install "Обновление репозиториев..." "sudo apt-get update -y"
install "Обновление пакетов..." "sudo apt-get upgrade -y"
install "Обновление системы..." "sudo apt-get dist-upgrade -y"
install "Установка пакета chromium-browser..." "sudo apt-get install chromium-browser -y"
install "Скачивается пакет chrome-stable..." "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
install "Установка пакета chrome-stable..." "sudo apt install ./google-chrome-stable_current_amd64.deb -y"
install "Установка пакета filezilla..." "sudo apt-get install filezilla -y"
install "Установка пакета flameshot..." "sudo apt-get install flameshot -y"
install "Установка пакета kdeconnect..." "sudo apt-get install kdeconnect -y"
install "Установка пакета gnome-tweak-tool..." "sudo apt-get install gnome-tweak-tool -y"
install "Установка пакета chrome-gnome-shell..." "sudo apt-get install chrome-gnome-shell libproxy1-plugin-networkmanager gnome-shell-extension-system-monitor -y"
install "Установка пакета transmission..." "sudo apt-get install transmission -y"
install "Установка пакета clementine..." "sudo apt-get install clementine -y"
install "Установка пакета vlc..." "sudo apt-get install vlc -y"
install "Установка пакета gimp..." "sudo apt-get install gimp -y"
install "Установка пакета htop..." "sudo apt-get install htop -y"
install "Установка пакета mc..." "sudo apt-get install mc -y"
install "Скачивается пакет viber..." "wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb"
install "Установка пакета viber..." "sudo apt install ./viber.deb -y"
install "Установка пакета snapd..." "sudo apt-get install snapd -y"
install "Установка пакета telegram-desktop..." "sudo snap install telegram-desktop"
install "Установка пакета scrcpy..." "sudo snap install scrcpy"
install "Установка пакета mailspring..." "sudo snap install mailspring"
install "Установка пакета neofetch..." "sudo apt-get install neofetch -y"
install "Установка пакета sublime-text..." "sudo snap install sublime-text --classic"
install "Установка пакета spotify..." "sudo snap install spotify"
install "Скачивание jetbrains toolbox" "wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.21.9712.tar.gz"
install "Распаковка jetbrains toolbox" "sudo tar -xvf jetbrains-toolbox-1.21.9712.tar.gz && cd jetbrains-toolbox-1.21.9712/"
install "Установка jetbrains toolbox" "sudo ./jetbrains-toolbox"
install "Удаление кэша" "sudo rm -rf google-chrome-stable_current_amd64.deb viber.deb jetbrains-toolbox-1.21.9712.tar.gz jetbrains-toolbox-1.21.9712"
echo ""

echo "Все пакеты успешно установлены!"
