# Ansible Role: sysengquick.unix.git

Configures user's .gitconfig file.

## Requirements

None.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.git
```

## Dependencies

None.

## Example Playbook

```yaml
---
- name: Configure applications
  hosts: all
  gather_facts: false
  roles: [sysengquick.unix.git]
  vars:
    git_config:
      user:
        name: John Example
        email: john@example.net
      alias:
        oneline: log --oneline
      commit:
        template: /dev/null
      core:
        editor: code --wait
      credential:
        username: johnny.example
        helper: cache --timeout=14400
      diff:
        tool: default-difftool
      'diff "default-difftool"':
        cmd: code --wait --diff $LOCAL $REMOTE
      pull:
        rebase: true
      safe:
        directory: "*"
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
