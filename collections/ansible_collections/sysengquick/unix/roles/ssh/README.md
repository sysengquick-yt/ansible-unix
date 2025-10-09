# Ansible Role: sysengquick.unix.ssh

Configure the user's .ssh config files.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.ssh
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.ssh]
  vars:
    ssh_authorized_keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI777E5ACAAIP8Xxm9Z8N7F9zDd9W4YWE3Uv7ezeKavoDD0dfwsw2bs
    ssh_common_options:
      ServerAliveCountMax: 3
      ServerAliveInterval: 30
      StrictHostKeyChecking: accept-new
      User: "{{ ansible_user }}"
    ssh_host_options:
      bastion: &laptops
        IdentityFile: ~/.ssh/home.pub
        PKCS11Provider: ~
    ssh_identity_keys:
      home: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5ACAAIP8Xxm9Z8N7F9zDd9W4YWE3Uv7ezeKavoDD0dfwsw2bs
    ssh_match_options:
      "originalhost *.remote.example.net":
        ProxyJump: bastion
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
