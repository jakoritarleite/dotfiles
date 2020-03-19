echo "Copying .vimrc"
cp .vimrc ~/.vimrc

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing Zsh"
brew install zsh

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "Installing Wget"
brew install wget

echo "Installing FiraCode font"
wget https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
unzip FiraCode_2.zip
sudo cp ttf/* /Library/Fonts/


echo "Configuring zsh preferences:"

echo "Installing Spaceship:"
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#echo "Installing Zplugin's"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

cp .zshrc ~/.zshrc

echo "Now, what you need to do is open Terminal preferences and import the Theme.terminal file from Terminal folder and set as default."
echo "Done!"
