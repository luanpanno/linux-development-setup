echo '-------------------------------------------------'
echo '       Linux Development Setup - Luan Panno      '
echo '               install-docker.sh                 '
echo '-------------------------------------------------'

echo '\n-------------------------------------------------'
echo 'installing docker'
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

sudo chmod 777 /var/run/docker.sock
docker run hello-world

echo '\n-------------------------------------------------'
echo 'installing docker-compose'
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo '\n-------------------------------------------------'
echo 'add user to docker group'
sudo usermod -aG docker $USER
newgrp docker

echo '\nDone'
