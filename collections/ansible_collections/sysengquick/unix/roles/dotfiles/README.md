# Ansible Role: sysengquick.unix.dotfiles

This is a metarole that conditionally includes other roles: bash, configs, git, and ssh.

By default, it does not include any of the other roles.
You must explicitly request which roles should be included.

## Requirements

None

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.dotfiles
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.dotfiles]
  vars:
    dotfiles_bash: true
    dotfiles_configs: true
    dotfiles_git: true
    dotfiles_ssh: true
    # ...and any variables that apply to the included roles you want
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
