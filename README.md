# Ansible thingies

WIP

Command for rebooting
```bash
 ansible-playbook -i hosts --limit '!localhost:!linode' playbooks/reboot-machine.yml
```
## General

Use by running command: `ansible-playbook -l <hosts> playbook-name.yml`

### Set hostname and machine id playbook
Use by running command: 
`ansible-playbook -i ./hosts -l 192.168.1.92 playbooks/set-hostname-and-machine-id.yml --extra-vars "hostname=myNewHostName"`

Remember to add the new server to the hosts file first.
