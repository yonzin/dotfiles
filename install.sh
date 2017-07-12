 #!/usr/bin/env bash
REPO_DIR="~/repositories"

sudo apt install vim zsh

if [ -d $REPO_DIR]; then 
  mkdir $REPO_DIR
fi

cd $REPO_DIR

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

wget -O ~/.oh-my-zsh/themes/docker.zsh-theme https://raw.githubusercontent.com/dpdornseifer/docker-zsh-theme/master/docker.zsh-theme

 
