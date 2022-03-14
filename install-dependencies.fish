#!/usr/bin/env fish

ansible-galaxy collection install community.general

ansible-galaxy install -r $HOME/code/ansible-playbooks/requirements.yml
