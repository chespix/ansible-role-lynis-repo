Ansible Role Remove : Lynis
============================



Removes the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.

Requirements
------------

None.

Role Variables
--------------

The variables should be similar to the install/execute repo.

```yml

ansible-role-lynis-remove/defaults/main.yml

lynis_version: 2.2.0
```

```yml
lynis_src_directory: /usr/local/src/
```
The directory to store the `.tar.gz` and Lynis src files.

```yml
lynis_dest_directory: /opt
```
The directory to hold the Lynis installation.

```yml
lynis_log_directory: /var/log/lynis
```
The directory for the Lynis logs. Used by the cron job. By default Lynis will output the report to `stdout` and log to `/var/log/lynis.log` and `/var/log/lynis-report.dat`.

```yml
ansible-role-lynis-excute/vars/main.yml

var_hosts: all
var_remote_user: ansible
var_become: yes

```

Dependencies
------------

None.

Example Playbook
----------------

```yml
- hosts: all
  roles:
     - { role: ansible-role-lynis-remove }
```

Executing Playbook
-------------------
``` 

ansible-playbook -i local ansible-role-lynis-install.yml

```

Sample Execution
-----------------

```
ubuntu@ip-172-31-13-243:/etc/ansible/ansible-role-lynis-repo$ ansible-playbook -i local ansible-role-lynis-remove.yml

PLAY [all] *********************************************************************

TASK [setup] *******************************************************************
ok: [54.89.153.25]

TASK [ansible-role-lynis-remove : Removing of lynis cron] **********************
changed: [54.89.153.25]

TASK [ansible-role-lynis-remove : Removing of lynis logs] **********************
changed: [54.89.153.25]

TASK [ansible-role-lynis-remove : Removing of lynis files] *********************
changed: [54.89.153.25]

TASK [ansible-role-lynis-remove : Removing of lynis source file] ***************
changed: [54.89.153.25]

PLAY RECAP *********************************************************************
54.89.153.25               : ok=5    changed=4    unreachable=0    failed=0   

ubuntu@ip-172-31-13-243:/etc/ansible/ansible-role-lynis-repo$ 


```
