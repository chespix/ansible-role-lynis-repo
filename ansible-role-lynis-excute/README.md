Ansible Excute Role: Lynis
==========================

Installs the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.

Requirements
------------

None.

Role Variables
--------------

```vars/main.yml
var_hosts: test
var_remote_user: ec2-user 
var_become: yes
```
The version and corresponding `sha256sum` of Lynis to install. Latest version and hash can be found on the [Lynis download page](https://cisofy.com/download/lynis/).

```yml
lynis_src_directory: /usr/local/src/
```

Dependencies
------------

None.

Example Playbook
----------------

```yml
- hosts: "{{ var_hosts }}"
  user: "{{ var_remote_user }}"
  become: "{{ var_become }}"
  roles:
     - { role: ansible-role-lynis-excute }
```

Executing Playbook
-------------------
``` 
ansible-playbook ansible-role-lynis-excute.yml

```
