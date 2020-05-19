#!/bin/bash
#evitando instalar cosas con root
if [[ $EUID == 0 ]]; then
     echo "Eres root, no puedes ejecutar este script" 1>&2
     exit 1
fi

sudo apt-get install bspwm -y
sudo apt-get install compton -y
sudo apt-get install feh -y
sudo apt-get install rofi -y



#Dependencias de bspwn
sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev

#Compilando e Instalando
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install

#Arrancando bspwn
mkdir -p ~/.config/{bspwm,sxhkd}
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc

#dependencias polybar
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

mkdir ~/.config/polybar
cp launch.sh ~/.config/polybar/launch.sh
# cp config ~/.config/polybar/config

#Copiando configuracion de launcher
cp .xinitrc ~/.xinitrc

#Configuracion de bspwm
cp bspwmrc ~/.config/bspwm/bspwmrc

#Configuracion de atajos de teclado
cp sxhkdrc ~/.config/sxhkd/sxhkdrc

#Configuracion de transparencias
cp compton.conf ~/.config/compton/compton.conf

#Configuracion de resize
cp bspwm_resize ~/.config/bspwm/scripts/bspwm_resize
#descargando Polybar (revisar si la version funciona)
wget -c https://github.com/polybar/polybar/releases/download/3.4.3/polybar-3.4.3.tar

sudo mv polybar-3.4.3.tar /opt
cd /opt
sudo tar -xf polybar-3.4.3.tar 
sudo mkdir build
cd build
sudo cmake ..
sudo make -j$(nproc)
sudo make install

#Pendiente VPN y archivo de config polybar

