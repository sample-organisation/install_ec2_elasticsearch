#!/bin/bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic.list
sudo apt-get update
sudo apt-get install -y elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch
