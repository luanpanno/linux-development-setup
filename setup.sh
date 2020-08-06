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
echo 'luanpanno adicionado como user.name no git'
git config --global user.name "luanpanno"

echo '-------------------------------------------------'
echo 'luanpanno@gmail.com adicionado como user.email no git'
git config --global user.name "luanpanno@gmail.com"

echo '-------------------------------------------------'
echo 'instalando npm'
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs -y

echo '-------------------------------------------------'
echo 'instalando VSCode'
sudo snap install code --classic

echo '-------------------------------------------------'
echo 'instalando extensões no VSCode'
code --install-extension azemoh.one-monokai
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.liveserver
code --install-extension EQuimper.react-native-react-redux
code --install-extension shd101wyy.markdown-preview-enhanced

echo '-------------------------------------------------'
echo 'instalando spotify' 
sudo snap install spotify

echo '-------------------------------------------------'
echo 'instalando insomnia'
sudo snap install insomnia

echo '-------------------------------------------------'
echo ' '
echo 'Setup finalizado! :)'
echo ' '