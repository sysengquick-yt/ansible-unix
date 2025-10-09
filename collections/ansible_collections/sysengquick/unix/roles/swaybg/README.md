# Ansible Role: sysengquick.unix.swaybg

Configure user systemd swaybg service.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.swaybg
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.swaybg]
  vars:
    swaybg_image: /home/user/Pictures/backgrounds/awesome.jxl
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
