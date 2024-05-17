#!/bin/bash

cd vnx
sudo vnx -f tutorial_kubespray.xml --create
sudo /lab/cnvr/bin/install-k8s-reqs 5.7.1
cd ..
cd ansible
sleep 30
time ansible-playbook site.yml
cd ..
scp -r examples k8s-master:
