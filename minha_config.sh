#fontes
git clone --depth=1 https://github.com/terroo/fonts
cd fonts
mv fonts ~/.local/share
fc-cache -fv

# Instalar e configurar ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c " $( curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh ) "

# Spaceship Prompt
# https://github.com/spaceship-prompt/spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git " $ZSH_CUSTOM /themes/spaceship-prompt " --depth=1
ln -s " $ZSH_CUSTOM /themes/spaceship-prompt/spaceship.zsh-theme "  " $ZSH_CUSTOM /themes/spaceship.zsh-theme "

#Tema Dracula zsh
#https://draculatheme.com/zsh
git clone https://github.com/dracula/zsh.git
ln -s $DRACULA_THEME/dracula.zsh-theme $OH_MY_ZSH/themes/dracula.zsh-theme

# Mudar ~/.zshrc -> ZSH_THEME="nave espacial"

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM :- ~ / .oh-my-zsh / custom} /plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM :- ~ / .oh-my-zsh / custom} /plugins/zsh-syntax-highlighting

# Plugins de mudança
# plugins=(git zsh-autosuggestions zsh-sintaxe-destaque)
