# Ansible thingies

WIP

Command for rebooting
```bash
 ansible-playbook -i hosts --limit '!localhost:!linode' playbooks/reboot-machine.yml
```
