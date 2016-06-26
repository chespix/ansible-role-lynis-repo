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
