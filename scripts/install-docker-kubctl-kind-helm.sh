#!/bin/bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"  && \
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl  && \
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64  && \
chmod +x ./kind  && \
sudo mv kind /usr/bin/kind

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg  && \

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

curl -fsSL -o helm-v3.8.1-linux-amd64.tar.gz https://get.helm.sh/helm-v3.8.1-linux-amd64.tar.gz  && \
tar -zxvf helm-v3.8.1-linux-amd64.tar.gz  && \
sudo mv linux-amd64/helm /usr/local/bin/helm  && \

echo 'kind: Cluster'>> cluster-config.yaml
echo 'apiVersion: kind.x-k8s.io/v1alpha4'>> cluster-config.yaml
echo 'nodes:'>> cluster-config.yaml
echo '- role: control-plane'>> cluster-config.yaml
echo '- role: worker'>> cluster-config.yaml
echo '- role: worker'>> cluster-config.yaml

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    gnupg \
    apt-transport-https \
    docker.io \
    lsb-release -y


sudo usermod -aG docker $USER  && \
newgrp docker
kind create cluster --config cluster-config.yaml