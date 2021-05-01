#!/bin/bash
(
    sudo apt-get remove docker docker-engine docker.io containerd runc ||
    sudo apt-get update &&
    sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release &&
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg &&
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null &&
    sudo apt-get update &&
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io &&
    sudo usermod -aG docker $USER &&
    echo "✅ DOCKER INSTALL COMPLETE" &&

    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
    sudo chmod +x /usr/local/bin/docker-compose &&
    echo "✅ DOCKER COMPOSE INSTALL COMPLETE" &&

    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash &&
    echo "✅ LAZY DOCKER INSTALL COMPLETE"
)