# JumpCloud Role for Ansible
------------

[![Ansible Role](https://img.shields.io/ansible/role/4378.svg)](https://galaxy.ansible.com/detail#/role/4378)
[![Build Status](https://travis-ci.org/shrikeh-ansible-roles/ansible-jumpcloud.svg)](https://travis-ci.org/shrikeh-ansible-roles/ansible-jumpcloud)
[![GitHub Stars](https://img.shields.io/github/stars/shrikeh-ansible-roles/ansible-jumpcloud.svg)][github]

This role idempotently installs the [JumpCloud][jumpcloud] agent and restarts the JumpCloud agent service as required.

## Requirements
------------
[cURL][curl] and NTP should be installed as prerequisites.

## Role Variables
------------

#### [`jumpcloud_x_connect_key`][jc-x-connect-key]
Default: none

The API key as displayed on the `Servers > Add` screen. **Mandatory**.

#### [`jumpcloud_temp_directory`][jc-temp-directory]
Default: `/tmp/jc_install`

Path to the temp directory created for the install script.
#### [`jumpcloud_temp_directory_mode`][jc-temp-directory-mode]
Default: `0700`

Octal code to use for permissions for the directory the install script will be pushed to.

#### [`jumpcloud_temp_install_file`][jc-temp-install-file]
Default: `install.sh`

Name of the install file.

#### [`jumpcloud_install_script_mode`][jc-install-script-mode]
Default: `0700`

Octal code to use for permissions for the install script itself.

#### [`jumpcloud_install_script_owner`][jc-install-script-owner]
Default: `root`

Owner of the install script.

#### [`jumpcloud_install_script_group`][jc-install-script-group]
Default: `root`

Group of the install script.

#### [`jumpcloud_directory`][jc-directory]
Default: `/opt/jc`

Path to check if JumpCloud has been previously installed.

#### [`jumpcloud_x_connect_url`][jc-x-connect-url]
Default: 'https://kickstart.jumpcloud.com/Kickstart'

URL for the install script.

#### [`jumpcloud_template_path`][jc-template-path]
Default: `install.j2`

Path to the template to use for the install script.

#### [`jumpcloud_force_install`][jc-force-install]
Default: `no`

Used to determine whether or not to force installation of the client if it has been previously installed.

#### [`jumpcloud_agent_service`][jc-agent-service]
Default: `jcagent`

Name of the service to restart.

#### [`jumpcloud_use_sudo`][jc-use-sudo]
Default: `no`

Whether or not to use sudo during installation.

## Example Playbook
----------------

```YAML
---
- hosts: production
  roles:
     - { role: shrikeh.jumpcloud, jumpcloud_x_connect_key: 'abcdef012234343' }
...
```

## License
-------

[MIT][licence]

## Author Information
------------------
Contact me on Twitter @[barney_hanlon][twitter]

[github]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud "This role on Github"
[curl]: https://galaxy.ansible.com/list#/roles/4384
[jumpcloud]: https://jumpcloud.com "JumpCloud website"
[jc-x-connect-key]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L4 "Link to variable on master"
[jc-temp-directory]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L4 "Link to variable on master"
[jc-temp-directory-mode]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L5 "Link to variable on master"
[jc-temp-install-file]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L6 "Link to variable on master"
[jc-install-script-mode]:	https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L7 "Link to variable on master"
[jc-install-script-owner]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L9 "Link to variable on master"
[jc-install-script-group]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L10 "Link to variable on master"
[jc-directory]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L12 "Link to variable on master"
[jc-x-connect-url]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L13 "Link to variable on master"
[jc-template-path]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L15 "Link to variable on master"
[jc-force-install]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L17 "Link to variable on master"
[jc-agent-service]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L18 "Link to variable on master"
[jc-use-sudo]: https://github.com/shrikeh-ansible-roles/ansible-jumpcloud/blob/master/defaults/main.yml#L19 "Link to variable on master"
[licence]: https://raw.githubusercontent.com/shrikeh/ansible-jumpcloud/master/LICENSE
[twitter]: https://twitter.com/barney_hanlon "Link to my Twitter page"
