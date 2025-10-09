# Ansible Role: sysengquick.unix.selinux

Configures selinux mode.

## Requirements

Linux with selinux (e.g. RHEL, Fedora).

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.selinux
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.selinux]
  vars:
    selinux_state: permissive
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
