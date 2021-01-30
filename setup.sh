echo '-------------------------------------------------'
echo 'Linux Development Setup - Luan Panno'
echo '-------------------------------------------------'

echo 'running update'
sudo apt-get update

echo '-------------------------------------------------'
echo 'installing Google Chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo '-------------------------------------------------'
echo 'installing curl' 
sudo apt-get install curl -y

echo '-------------------------------------------------'
echo 'installing git' 
sudo apt-get install git-all -y

echo '-------------------------------------------------'
echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"Luan Panno\""
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear 

echo '-------------------------------------------------'
echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"luanpanno@gmail.com\""
read git_config_user_email
git config --global user.email $git_config_user_email
clear

echo '-------------------------------------------------'
echo 'installing Node.js LTS'
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs -y

echo '-------------------------------------------------'
echo 'installing VSCode'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y # or code-insiders

echo '-------------------------------------------------'
echo 'installing VSCode Extensions'
code --install-extension naumovs.color-highlight
code --install-extension ms-azuretools.vscode-docker
code --install-extension editorconfig.editorconfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension andys8.jest-snippets
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension PKief.material-icon-theme
code --install-extension azemoh.one-monokai
code --install-extension esbenp.prettier-vscode
code --install-extension EQuimper.react-native-react-redux
code --install-extension natqe.reload
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension jpoissonnier.vscode-styled-components

echo '-------------------------------------------------'
echo 'installing spotify'
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

echo '-------------------------------------------------'
echo 'installing insomnia'
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

sudo apt-get update && sudo apt-get install insomnia -y

echo '-------------------------------------------------'
echo 'installing flameshot'
sudo apt-get install flameshot -y

echo '-------------------------------------------------'
echo 'installing peek'
sudo apt-get install peek -y

echo '-------------------------------------------------'
echo 'installing remmina'
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y

echo '-------------------------------------------------'
echo 'installing yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo '-------------------------------------------------'
echo 'installing docker' 
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

sudo chmod 777 /var/run/docker.sock
docker run hello-world

echo '-------------------------------------------------'
echo 'installing docker-compose' 
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version


echo '-------------------------------------------------'
echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

echo '-------------------------------------------------'
echo '\n Setup done! :) \n'