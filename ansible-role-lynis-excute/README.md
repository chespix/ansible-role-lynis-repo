Ansible Excute Role: Lynis
==========================

Installs the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.

Requirements
------------

```
   Lynis should be already installed

````

Role Variables
--------------

```
ansible-role-lynis-excute/vars/main.yml

var_hosts: all
var_remote_user: ansible 
var_become: yes

```


Dependencies
------------


```
lynis should be already installed using ansible-role-lynis-install.yml

```

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
git clone https://github.com/retheshnair/ansible-role-lynis-repo

ansible-playbook -i local ansible-role-lynis-excute.yml

```
Report and Log Files 
---------------------

```
Report and log files is located under /home/{{ var_remote_user }}/logs/lynis/{{ inventory_hostname }}/
 
```
