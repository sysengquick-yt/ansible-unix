# Ansible Role: sysengquick.unix.niri

Install and configure niri window manager in fedora.

## Requirements

Fedora Linux (incl Fedora Asahi Remix).

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.niri
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.niri]
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
