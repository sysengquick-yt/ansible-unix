# Ansible Role: sysengquick.unix.bash

Configures user bash/zsh config files.

## Requirements

None

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.bash
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.bash]
  vars:
    bash_aliases:
      backup_ls: find . -type f -name '*~'
      backup_rm: find . -type f -name '*~' -delete
      fix_perms: find . \( -type f -exec chmod 644 {} + \) -o \( -type d -exec chmod 755 {} + \)
      fcns: compgen -A function | grep -v '^_'

    bash_environment:
      EDITOR: vim
      HISTCONTROL: ignoreboth
      HISTTIMEFORMAT: "[%F %T] "
      HISTSIZE: &bash_history_size 9999
      HISTFILESIZE: *bash_history_size
      LC_ALL: &bash_locale en_US.UTF-8
      LANG: *bash_locale

    bash_custom_config:
      "bash history options": |-
        shopt -s histappend
        shopt -s histverify

    bash_functions:
      ssl_cert_expire: |-
        timeout 10 openssl s_client -servername $1 -connect $1:443 -showcerts </dev/null 2>/dev/null \
        | openssl x509 -noout -dates 2>/dev/null || echo "Failed to retrieve certificate for $1"
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
