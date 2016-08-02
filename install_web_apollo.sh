#!/bin/bash
#####################################################
# script run on target machine to install Web Apollo
#####################################################

[ -d "/mnt/gvl/apps" ] || mkdir -p /mnt/gvl/apps # ensure /mnt/galaxy/apps exists
cd /opt/gvl
if [ -d "/opt/gvl/gvl.ansible.web_apollo" ]; then
  git pull https://github.com/gvlproject/gvl.ansible.web_apollo
else
  git clone -b release_GVL_4.1 https://github.com/gvlproject/gvl.ansible.web_apollo
fi
cd /opt/gvl/gvl.ansible.web_apollo
ansible-playbook playbook.yml
