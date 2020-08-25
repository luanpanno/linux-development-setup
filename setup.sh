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
echo 'instalando node.js'
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
code --install-extension azemoh.one-monokai
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.liveserver
code --install-extension EQuimper.react-native-react-redux
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension esbenp.prettier-vscode

echo '-------------------------------------------------'
echo 'instalando spotify' 
sudo snap install spotify

echo '-------------------------------------------------'
echo 'instalando insomnia'
sudo snap install insomnia

echo '-------------------------------------------------'
echo 'instalando zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo '-------------------------------------------------'
echo ' '
echo 'Setup finalizado! :)'
echo ' '