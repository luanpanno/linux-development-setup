echo '-------------------------------------------------'
echo '       Linux Development Setup - Luan Panno      '
echo '            convert-deprecated-keys.sh           '
echo '-------------------------------------------------'

for KEY in $(apt-key --keyring /etc/apt/trusted.gpg list | grep -E "(([ ]{1,2}(([0-9A-F]{4}))){10})" | tr -d " " | grep -E "([0-9A-F]){8}\b"); do
  K=${KEY:(-8)}
  apt-key export $K | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/imported-from-trusted-gpg-$K.gpg
done

echo '\nDone'
