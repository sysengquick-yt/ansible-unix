# Ansible Role: sysengquick.unix.fedora

This is a metarole for configuring a fedora linux system.
It conditionally includes other roles including niri, sddm, plymouth, apps, dotfiles, fstab, selinux, and sudoers.

By default, it includes all of these roles.
You must explicitly disable any roles you do not want included.
Set the `fedora_use_X` variables to disable a role.

## Requirements

The architecture and distribution ansible facts.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.fedora
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: true
  gather_subset: ["!all", "!min", "architecture", "distribution"]
  roles: [sysengquick.unix.fedora]
  vars:
    # ...add any variables that apply to the included roles you want
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
