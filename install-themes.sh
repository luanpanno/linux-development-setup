echo '-------------------------------------------------'
echo '       Linux Development Setup - Luan Panno      '
echo '               install-themes.sh                 '
echo '-------------------------------------------------'

# Gnome extension -> https://extensions.gnome.org/extension/19/user-themes/
# GTK theme -> https://www.opendesktop.org/p/1013698
# Icons theme -> https://www.gnome-look.org/p/1296407/

echo '\n-------------------------------------------------'
echo 'installing ohmyzsh theme'
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

echo '\nDone'
