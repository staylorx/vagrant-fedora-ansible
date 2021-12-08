#!/usr/bin/env bash

#####
echo "SSH key provisioning."
cat /vagrant_data/ssh_pub_key >> /home/vagrant/.ssh/authorized_keys

# Optionally copy dnf repos, which allows for mirroring yum repos
sudo cp /vagrant_data/repos/* /etc/yum.repos.d 

# Install Ansible
sudo dnf -y update
sudo dnf install -y ansible-core wget
