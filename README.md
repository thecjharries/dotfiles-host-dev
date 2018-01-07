# `dotfiles-host-dev`

[![Build Status](https://travis-ci.org/thecjharries/dotfiles-host-dev.svg?branch=master)](https://travis-ci.org/thecjharries/dotfiles-host-dev)
[![GitHub tag](https://img.shields.io/github/tag/thecjharries/dotfiles-host-dev.svg)](https://github.com/thecjharries/dotfiles-host-dev)

## Requirements

Fedora 27 is recommended.

## Role Variables

Defaults are below.

```yml
---
owning_user: "{{ ansible_user | default(remote_user, true) }}"
owning_group: "{{ owning_user }}"
root_dir: "{{ ansible_env.HOME }}"
config_dir: "{{ root_dir }}/.config"
```

These variables must be set:

```yml
host_user_name
host_user_email
host_user_url
```

## Dependencies

```yml
---
- src: git+https://github.com/thecjharries/dotfiles-role-common-software.git
- src: git+https://github.com/thecjharries/dotfiles-role-generic-template.git
- src: git+https://github.com/thecjharries/dotfiles-role-git.git
- src: git+https://github.com/thecjharries/dotfiles-role-i3.git
- src: git+https://github.com/thecjharries/dotfiles-role-javascript.git
- src: git+https://github.com/thecjharries/dotfiles-role-nano.git
- src: git+https://github.com/thecjharries/dotfiles-role-package-installer.git
- src: git+https://github.com/thecjharries/dotfiles-role-powerline-patched.git
- src: git+https://github.com/thecjharries/dotfiles-role-prezto.git
- src: git+https://github.com/thecjharries/dotfiles-role-python.git
- src: git+https://github.com/thecjharries/dotfiles-role-repo-installer.git
- src: git+https://github.com/thecjharries/dotfiles-role-rust.git
- src: git+https://github.com/thecjharries/dotfiles-role-sublime.git
- src: git+https://github.com/thecjharries/dotfiles-role-terminator.git
- src: git+https://github.com/thecjharries/dotfiles-role-tmux.git
```

## Example Playbook

```yml
---
- hosts: all

  roles:
    - role: dotfiles-host-dev
      host_user_name: Rick James
      host_user_email: something@clever.com
      host_user_url: clever.com
```

## License

ISC
