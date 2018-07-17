 #!/usr/bin/env bash
REPO_DIR="~/repositories"

sudo apt install vim zsh

if [ -d $REPO_DIR]; then 
  mkdir $REPO_DIR
fi

cd $REPO_DIR

## INSTALL ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -O ~/.oh-my-zsh/themes/docker.zsh-theme https://raw.githubusercontent.com/dpdornseifer/docker-zsh-theme/master/docker.zsh-theme


## INSTALL DOCKER
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual 
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
sudo snap install docker

## POST INSTALL DOCKER
sudo groupadd docker
sudo usermod -aG docker $USER

## INSTALL DOCKER-COMPOSE
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## GIT ALIAS
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'