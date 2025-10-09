# Ansible Role: sysengquick.unix.sddm

Install and configure SDDM on Fedora Linux.

## Requirements

Fedora Linux (incl Fedora Asahi Remix).

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.sddm
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.sddm]
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
