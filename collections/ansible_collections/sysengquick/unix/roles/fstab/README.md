# Ansible Role: sysengquick.unix.fstab

Configures mount points in /etc/fstab.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.fstab
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.fstab]
  vars:
    fstab_mounts:
      /mnt/nas:
        state: present
        src: //192.168.1.2/tank
        fstype: cifs
        opts: noauto,x-systemd.automount,_netdev,guest,uid=1000,gid=1000,file_mode=0644,dir_mode=0755
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
