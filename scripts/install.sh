#!/bin/bash


apt-get update
apt-get upgrade -y

apt-get install -y prometheus prometheus-pushgateway prometheus-alertmanager


mkdir -p /var/run/prometheus
chmod 777 /var/run/prometheus


apt-get install -y software-properties-common
add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

curl https://packages.grafana.com/gpg.key | apt-key add -


sudo apt-get update
sudo apt-get install -y grafana
