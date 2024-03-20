# Ansible Playbooks

These are the ansible playbooks I use to set up my various machines.

- **homeworld** - My main home-server, runs proxmox with Docker and host customizations
- **mirror** - Linux VM with GUI for the occasional app that is best run in a graphical environment
- **termux** - [Termux](https://termux.dev/en/) environment on my Android phone 
- **tailnode** - Dedicated [Tailscale](https://tailscale.com/) jumphost to access my Tailnet from devices that cannot run the Tailscale client
- **latitude** - My personal laptop

## Setup
- Install required modules from ansible galaxy with `just requirements`
