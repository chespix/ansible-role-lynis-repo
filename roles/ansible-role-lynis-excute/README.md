Ansible Excute Role: Lynis
==========================

Installs the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.

Requirements
------------

```
   Lynis should be already installed

````


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

ansible-playbook -i local ansible-role-lynis-excute.yml

```

Report and Log Files 
---------------------

```
Report and log files is located under /home/{{ var_remote_user }}/logs/lynis/{{ inventory_hostname }}/
 
```

Sample Execution
-----------------

````

[centos@ip-172-31-9-166 ansible-role-lynis-repo]$ ansible-playbook -i local ansible-role-lynis-excute.yml 

PLAY [all] *********************************************************************

TASK [setup] *******************************************************************
ok: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
ok: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-excute : Execution of the lynis script] ***************
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-excute : Creating directory for storing the logs] *****
ok: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com -> localhost]
ok: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com -> localhost]

TASK [ansible-role-lynis-excute : Disabling requiretty in /etc/sudoers for rsync to work] ***
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]

TASK [ansible-role-lynis-excute : Fetching the report file from the server] ****
changed: [ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com]
changed: [ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com]

PLAY RECAP *********************************************************************
ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com : ok=5    changed=3    unreachable=0    failed=0   
ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com : ok=5    changed=3    unreachable=0    failed=0   

[centos@ip-172-31-9-166 ansible-role-lynis-repo]$ 

entos@ip-172-31-9-166 ansible-role-lynis-repo]$ ls -al /home/centos/logs/lynis/
total 12
drwxr-xr-x. 4 centos root 4096 Jun 26 12:59 .
drwxr-xr-x. 3 centos root   18 Jun 26 12:59 ..
drwxr-x---. 2 centos root 4096 Jun 26 15:25 ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com
drwxr-x---. 2 centos root 4096 Jun 26 15:25 ec2-54-206-7-213.ap-southeast-2.compute.amazonaws.com
[centos@ip-172-31-9-166 ansible-role-lynis-repo]$ ls -al /home/centos/logs/lynis/ec2-54-206-116-110.ap-southeast-2.compute.amazonaws.com
total 232
drwxr-x---. 2 centos root     4096 Jun 26 15:25 .
drwxr-xr-x. 4 centos root     4096 Jun 26 12:59 ..
-rw-r-----. 1 centos centos  27561 Jun 26 15:25 report-data-ip-172-31-7-81.20160626
-rw-r--r--. 1 centos centos  18601 Jun 26 15:25 report-ip-172-31-7-81.20160626
-rw-r-----. 1 centos centos 179938 Jun 26 15:25 report-log-ip-172-31-7-81.20160626
[centos@ip-172-31-9-166 ansible-role-lynis-repo]$ 


````
