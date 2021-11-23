echo '-------------------------------------------------'
echo '       Linux Development Setup - Luan Panno      '
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
sudo apt-get install git -y

echo '-------------------------------------------------'
echo "Setting git user name"
git config --global user.name "Luan Panno"

echo '-------------------------------------------------'
echo "Setting git user email"
git config --global user.email "luanpanno@gmail.com"

echo '-------------------------------------------------'
echo 'installing Node.js LTS'
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs -y

echo '-------------------------------------------------'
echo 'installing yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo '-------------------------------------------------'
echo 'installing VSCode'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y # or code-insiders

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
echo 'installing beekeeper studio'
wget --quiet -O - https://deb.beekeeperstudio.io/beekeeper.key | sudo apt-key add -
echo "deb https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list
sudo apt update
sudo apt install beekeeper-studio -y

echo '-------------------------------------------------'
echo 'installing terminator'
sudo apt-get install terminator -y

echo '-------------------------------------------------'
echo 'installing vim'
sudo apt-get install vim -y

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
echo 'add user to docker group' 
sudo usermod -aG docker $USER
newgrp docker

echo '-------------------------------------------------'
echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

echo '-------------------------------------------------'
echo '\n Done! :) \n'