# ansible-playbooks
Ansible playbooks to deploy personal infrastructure and homelab machines.

### Steps to Deploy
1. `ssh-copy-id user@host`
2. `scp setup-managed-node.sh` host:
3. run the `setup-managed-node.sh` on remote host. (as root. script will handle this)
4. Switch to ansible user on your control node and `ssh-copy-id -i key.pub host`
5. Run the playbook as the ansible user (`ansible-playbook playbook.yml`
