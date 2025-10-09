# Ansible Role: sysengquick.unix.swayidle

Configure user systemd swayidle service.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.swayidle
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.swayidle]
  vars:
    swayidle_timeout_monitors: 900
    swayidle_timeout_screenlock: 300
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
