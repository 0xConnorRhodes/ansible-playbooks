#!/bin/bash

ANSIBLE_DIR="$HOME/code/ansible-playbooks"

ansible-vault view --vault-password-file $ANSIBLE_DIR/.vault_pass $ANSIBLE_DIR/configs/termux/age-termux-key.txt | ssh ph 'cat > $HOME/.local/.secret/age-termux-key.txt'
