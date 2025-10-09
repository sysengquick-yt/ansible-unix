# Ansible Role: sysengquick.unix.swaylock

Configure user's swaylock settings.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.swaylock
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.swaylock]
  vars:
    swaylock_options:
      color: 1e1e1e
      ignore-empty-password: ~
      show-failed-attempts: ~
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
