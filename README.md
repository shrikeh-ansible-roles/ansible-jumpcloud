# JumpCloud Role for Ansible
This role idempotently installs the [JumpCloud][jumpcloud] agent and restarts the JumpCloud service.

## Variables

### [`jumpcloud_x_connect_key`][jc-x-connect-key]
Default: none

The API key as displayed on the `Servers > Add` screen. **Mandatory**.

### [`jumpcloud_temp_directory`][jc-temp-directory]
Default: `/tmp/jc_install`

Path to the temp directory created for the install script.
### [`jumpcloud_temp_directory_mode`][jc-temp-directory-mode]
Default: `0700`

Octal code to use for permissions for the directory the install script will be pushed to.

### [`jumpcloud_temp_install_file`][jc-temp-install-file]
Default: `install.sh`

Name of the install file.

### [`jumpcloud_install_script_mode`][jc-install-script-mode]
Default: `0700`

Octal code to use for permissions for the install script itself.

### [`jumpcloud_install_script_owner`][jc-install-script-owner]
Default: `root`

Owner of the install script.

### `jumpcloud_install_script_group`
Default: `root`

Group of the install script.

### `jumpcloud_directory`
Default: `/opt/jc`

Path to check if JumpCloud has been previously installed.

### `jumpcloud_x_connect_url`
Default: 'https://kickstart.jumpcloud.com/Kickstart'

URL for the install script.

### `jumpcloud_template_path`
Default: `install.j2`

Path to the template to use for the install script.

### `jumpcloud_force_install`
Default: `no`

Used to determine whether or not to force installation of the client if it has been previously installed.

### `jumpcloud_agent_service`
Default: `jcagent`

Name of the service to restart.

### `jumpcloud_use_sudo`
Default: `no`

Whether or not to use sudo during installation.

[jumpcloud]: 				https://jumpcloud.com "JumpCloud website"
[jc-x-connect-key]:  		https://github.com/shrikeh/ansible-jumpcloud/blob/master/defaults/main.yml#L4
[jc-temp-directory]: 		https://github.com/shrikeh/ansible-jumpcloud/blob/master/defaults/main.yml#L4
[jc-temp-directory-mode]: 	https://github.com/shrikeh/ansible-jumpcloud/blob/master/defaults/main.yml#L5
[jc-temp-install-file]:		https://github.com/shrikeh/ansible-jumpcloud/blob/master/defaults/main.yml#L6
[jc-install-script-mode]:	https://github.com/shrikeh/ansible-jumpcloud/blob/master/defaults/main.yml#L7
[jc-install-script-owner]: https://github.com/shrikeh/ansible-jumpcloud/blob/master/defaults/main.yml#L9