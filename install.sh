# Begin

echo 'This script will install some things that will make your experience on archlabs better!'
echo ''
echo 'Created by Antoni Kepinski & Contributors, licensed under the MIT license.'
echo 'https://github.com/xxczaki/archlabs-setup'
echo ''
echo '-----------------------------------'

# Remove baph & install yay (aur helpers)

sleep 5; baph --install --noconfirm yay
yay --remove --noconfirm baph

# Full system upgrade

sudo pacman -Syyuu --noconfirm

# Some cool packages

yay -S --noconfirm git
yay -S --noconfirm curl
yay -S --noconfirm nodejs
yay -S --noconfirm bat
yay -S --noconfirm preload
yay -S --noconfirm archfetch

# Fix zsh

yay --remove --noconfirm grml-zsh-config

# Install some zsh plugins

yay -S --noconfirm zsh-syntax-highlighting
yay -S --noconfirm powerline
yay -S --noconfirm zsh-completions

# Install zsh, oh-my-zsh and change the default shell

yay -S --noconfirm zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh) && $SHELL --version

## End

echo ''
echo 'Done! Please reboot your system :)'
