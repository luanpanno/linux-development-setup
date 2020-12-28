echo '-------------------------------------------------'
echo 'Setup para desenvolvimento no Linux de Luan Panno'
echo '-------------------------------------------------'

echo 'executando um update'
sudo apt-get update

echo '-------------------------------------------------'
echo 'instalando Google Chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo '-------------------------------------------------'
echo 'instalando curl' 
sudo apt-get install curl -y

echo '-------------------------------------------------'
echo 'instalando git' 
sudo apt-get install git -y

echo '-------------------------------------------------'
git config --global user.name "Luan Panno"
echo 'Luan Panno adicionado como user.name no git'

echo '-------------------------------------------------'
git config --global user.email "luanpanno@gmail.com"
echo 'luanpanno@gmail.com adicionado como user.email no git'

echo '-------------------------------------------------'
echo 'instalando Node.js'
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs -y

echo '-------------------------------------------------'
echo 'instalando VSCode'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y # or code-insiders

echo '-------------------------------------------------'
echo 'instalando extensões no VSCode'
code --install-extension naumovs.color-highlight
code --install-extension ms-azuretools.vscode-docker
code --install-extension editorconfig.editorconfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension PKief.material-icon-theme
code --install-extension azemoh.one-monokai
code --install-extension esbenp.prettier-vscode
code --install-extension EQuimper.react-native-react-redux
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension jpoissonnier.vscode-styled-components

echo '-------------------------------------------------'
echo 'instalando flameshot'
sudo apt-get install flameshot

echo '-------------------------------------------------'
echo 'instalando peek'
sudo apt-get install peek

echo '-------------------------------------------------'
echo 'instalando yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo '-------------------------------------------------'
echo 'instalando docker' 
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

sudo chmod 777 /var/run/docker.sock
docker run hello-world

echo '-------------------------------------------------'
echo 'instalando docker-compose' 
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version


echo '-------------------------------------------------'
echo 'instalando zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo '-------------------------------------------------'
echo '\n Setup finalizado! :) \n'