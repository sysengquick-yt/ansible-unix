# Ansible Role: sysengquick.unix.sudoers

Configure sudoer's files in /etc/sudoers.d.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.sudoers
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.sudoers]
  vars:
    sudoers_rules:
      dnf:
        commands: /usr/bin/dnf
        group: wheel
      power:
        commands:
          - /usr/bin/poweroff
          - /usr/bin/shutdown
          - /usr/bin/reboot
        group: wheel
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
