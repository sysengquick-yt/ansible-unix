# Ansible Role: sysengquick.unix.waybar

Adds default niri waybar configs to the user's home directory.

## Requirements

Niri.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.waybar
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.waybar]
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
