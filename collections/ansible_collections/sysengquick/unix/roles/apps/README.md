# Ansible Role: sysengquick.unix.apps

A role for installing applications on unix systems.

Currently supports RedHat repo packages and flatpaks along with a few custom apps.

## Requirements

The architecture and distribution ansible facts.

## Role Variables

Role variables can be found in `meta/main.yml` in argument_specs.
Default values are in `defaults/main.yml`.

```bash
ansible-doc -t role sysengquick.unix.apps
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
  roles: [sysengquick.unix.apps]
  vars:
    apps_packages:
      - brave-browser
      - vim-default-editor
    apps_flatpaks: [org.videolan.VLC]
    apps_special: [tailscale]
    apps_repos:
      brave-browser: https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
    apps_pkgs:
      code: https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64
```

## License

Apache-2.0

## Author Information

John Ratliff <john@technoplaza.net>
