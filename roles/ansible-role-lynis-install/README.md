Ansible Role Install : Lynis
============================



Installs the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.


Requirements
------------

None.


Example Playbook
----------------

```yml
- hosts: all
  roles:
     - { role: ansible-role-lynis-install }
```

Executing Playbook
-------------------
``` 

ansible-playbook -i local ansible-role-lynis-install.yml

```

Sample Execution
-----------------

```
[centos@ip-172-31-9-166 ansible-role-lynis-repo]$ ansible-playbook -i local ansible-role-lynis-install.yml 

PLAY [all] *********************************************************************

TASK [setup] *******************************************************************
ok: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
ok: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-install : Download Lynis.] ****************************
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-install : Ensure Lynis src directory exists.] *********
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-install : Extract Lynis.] *****************************
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-install : Copy Lynis to dest directory.] **************
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com -> ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com -> ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-install : Ensure Lynis log directory exists (when lynis_cron).] ***
ok: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]
ok: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-install : Configure Lynis cron task (when lynis_cron).] ***
ok: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
ok: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

PLAY RECAP *********************************************************************
ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com : ok=7    changed=4    unreachable=0    failed=0   
ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com : ok=7    changed=4    unreachable=0    failed=0   

[centos@ip-172-31-9-166 ansible-role-lynis-repo]$ 

```

