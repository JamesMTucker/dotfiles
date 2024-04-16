!#/bin/bash

# install oh-my-zsh
apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# change default shell to zsh
chsh -s $(which zsh)

# install zsh plugins
cd ~/.oh-my-zsh/custom/plugins

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
