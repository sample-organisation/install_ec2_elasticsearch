#!/bin/bash

sudo apt-get update
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.3.1/elasticsearch-2.3.1.deb
sudo dpkg -i elasticsearch-2.3.1.deb
sudo systemctl enable elasticsearch.service
