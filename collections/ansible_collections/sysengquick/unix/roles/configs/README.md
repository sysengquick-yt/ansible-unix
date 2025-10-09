# Ansible Role: sysengquick.unix.configs

Copies custom config files to the system.

Make a directory files/configs next to your inventory file.
This is where config files will be sourced from.

Inside this directory, make a directory named after each key in config_files.
Place the files for that section in that directory.

Example:

Inventory file = `inventory/hosts.yaml`.
Config files are in `inventory/files/configs`.
Config files for `kitty` are in `inventory/files/configs/kitty`.

## Requirements

None

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.configs
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.configs]
  vars:
    configs_files:
      # place .inputrc -> $HOME/.inputrc
      inputrc:
        directory: ~
        files: [.inputrc]

      # place kitty.conf -> $HOME/.config/kitty/kitty.conf
      kitty: {}

      # place handle-lid-switch.conf -> /etc/systemd/logind.conf.d/handle-lid-switch.conf
      # use become for elevated privileges
      logind:
        become: true
        directory: /etc/systemd/logind.conf.d
        files: [handle-lid-switch.conf]
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
