Ansible Role Remove : Lynis
============================


Removes the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.

Requirements
------------
```
   Lynis should be already installed
```


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

ansible-playbook -i local ansible-role-lynis-remove.yml

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
