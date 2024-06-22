echo '-------------------------------------------------'
echo '       Linux Development Setup - Luan Panno      '
echo '                    setup.sh                     '
echo '-------------------------------------------------'

echo '\n>>>>> running update'
sudo apt-get update

echo '\n-------------------------------------------------'
echo '>>>>> installing apt-transport-https'
sudo apt-get install apt-transport-https -y

echo '\n-------------------------------------------------'
echo '>>>>> installing google chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo '\n-------------------------------------------------'
echo '>>>>> installing curl'
sudo apt-get install curl -y

echo '\n-------------------------------------------------'
echo '>>>>> installing git'
sudo apt-get install git -y

git_config_user_name="Luan Panno"
echo "\n>>>>> setting \"$git_config_user_name\" as the default git name"
git config --global user.name "$git_config_user_name"

git_config_user_email="luanpanno@gmail.com"
echo "\n>>>>> setting \"$git_config_user_email\" as the default git email"
git config --global user.email "$git_config_user_email"

echo '\n-------------------------------------------------'
echo '>>>>> installing node.js lts'
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs -y

echo '\n-------------------------------------------------'
echo '>>>>> installing nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo '\n-------------------------------------------------'
echo '>>>>> installing yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

echo '\n-------------------------------------------------'
echo '>>>>> installing vscode'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y # or code-insiders

echo '\n-------------------------------------------------'
echo '>>>>> installing spotify'
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

echo '\n-------------------------------------------------'
echo '>>>>> installing insomnia'
curl -1sLf \
  'https://packages.konghq.com/public/insomnia/setup.deb.sh' |
  sudo -E distro=ubuntu codename=focal bash
sudo apt update
sudo apt install insomnia -y

echo '\n-------------------------------------------------'
echo '>>>>> installing flameshot'
sudo apt-get install flameshot -y

echo '\n-------------------------------------------------'
echo '>>>>> installing peek'
sudo apt-get install peek -y

echo '\n-------------------------------------------------'
echo '>>>>> installing beekeeper studio'
curl -fsSL https://deb.beekeeperstudio.io/beekeeper.key | sudo gpg --dearmor --output /usr/share/keyrings/beekeeper.gpg &&
  sudo chmod go+r /usr/share/keyrings/beekeeper.gpg &&
  echo "deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main" |
  sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list >/dev/null
sudo apt update && sudo apt install beekeeper-studio -y

echo '\n-------------------------------------------------'
echo '>>>>> installing terminator'
sudo apt-get install terminator -y

echo '\n-------------------------------------------------'
echo '>>>>> installing vim'
sudo apt-get install vim -y

echo '\n-------------------------------------------------'
echo '>>>>> installing gnome-tweak-tool'
sudo apt-get install gnome-tweak-tool -y

echo '\n-------------------------------------------------'
echo '>>>>> installing zsh'
sudo apt-get install zsh -y

echo '\n-------------------------------------------------'
echo '>>>>> installing ohmyzsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

echo '\n-------------------------------------------------'
echo '\n>>>>> Run the following command if you want to install docker:'
echo './install-docker.sh'

echo '\n>>>>> Run the following command if you want to install themes:'
echo './install-themes.sh'

echo '\n>>>>> Setup done! :)'
echo '\n-------------------------------------------------'
