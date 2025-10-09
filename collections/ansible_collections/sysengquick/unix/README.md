# System Configuration Plays

This collection is used to configure unix systems.

## Overview

There are two primary playbooks for this collection: fedora and server.
The fedora playbook configures a fedora linux system from scratch.
The server playbook installs applications and configures settings on most unix servers, with some limitations.

## fedora playbook

The fedora playbook is designed to fully configure a fedora linux system from scratch.
It includes the following roles:

- niri
  - Installs/configures the niri window manager
- SDDM
  - Installs and configures the SDDM graphical login manager
  - Uses niri for the wayland display server currently
- plymouth
  - Configures the plymouth boot splash theme
- apps
  - Fedora repo packages
  - Flatpaks
  - A few special applications with non-standard install methods (e.g. uv, tailscale, tmux AppImage, Joplin)
- dotfiles
  - bashrc/bash_profile
  - .gitconfig
  - .ssh/config and authorized_keys
  - Arbitrary custom config files
- fstab
  - Custom /etc/fstab entries
- selinux
  - SELinux policy
- sudoers
  - Custom sudoers.d configurations

All of these roles are included by default.
This may change in the future if additional window manager support is added.

## server playbook

This is a more limited playbook that only includes the apps and dotfiles roles.
It is designed to configure files on a server like gitconfig, tmux, and vim.

## Examples

```bash
ansible-playbook sysengquick.unix.fedora -e targets=fedora
ansible-playbook sysengquick.unix.server -e targets=bastion
```

## Devcontainer

This repo has a devcontainer config which includes all dependencies necessary to run the playbooks.
It is the recommended way to launch the playbooks.

## Configuration

The plays are meant to be very configurable.
The collection strives to be completely unopinioned.
Defaults only exist where they must exist.

You can configure your hosts using ansible group_vars and host_vars.
See the inventory folder for examples.

## YouTube

Version 1 of this collection was built and demonstrated in a [YouTube series](https://www.youtube.com/playlist?list=PLvadQtO-ihXv9Gqlo7SCY9EZ4p37HBpU9) on my channel.

Several things changed in version 2, which was built as I used the plays on my own equipment.
