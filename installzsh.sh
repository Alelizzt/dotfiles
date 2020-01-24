#!/usr/bin/bash
#evitando instalar cosas con root
if [[ $EUID == 0 ]]; then
    echo "Eres root, no puedes ejecutar este script" 1>&2
    exit 1
fi

#instalando oh-my-zsh
sudo apt install zsh -y
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#instalando tema
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#instalando plugins en /usr/share para usar con otros usuarios
git clone https://github.com/zsh-users/zsh-autosuggestions
mv zsh-autosuggestions .oh-my-zsh/custom/plugins/

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
mv zsh-syntax-highlighting .oh-my-zsh/custom/plugins/

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

sudo dpkg -i lsd_0.14.0_amd64.deb
#cp .zshrc ~/.zshrc

#ctrl+t busqueda recursiva
# comando ctrl+r
cd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

##para aplicar en root tambien
#sudo su
#ln -s -f /home/[YOURUSER]/.zshrc .zshrc


