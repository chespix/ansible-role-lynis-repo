Ansible Role Install : Lynis
============================



Installs the [Lynis](https://cisofy.com/lynis/) security auditing tool on RHEL/CentOS or Debian/Ubuntu servers.

Requirements
------------

None.

Role Variables
--------------

```yml

ansible-role-lynis-install/defaults/main.yml

lynis_version: 2.2.0
lynis_version_sha256sum: 64fe15be52fa77bce14250867da87e8c262fb0e9229517c4e2d2d5a38223bea4
```
The version and corresponding `sha256sum` of Lynis to install. Latest version and hash can be found on the [Lynis download page](https://cisofy.com/download/lynis/).

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
lynis_cron: yes
lynis_cron_hour: 3
lynis_cron_minute: 30
```
Lynis cron job configuration. The report, report log, and report data are all written to the `lynis_log_directory`.

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
     - { role: ansible-role-lynis-install }
```

Executing Playbook
-------------------
``` 
git clone https://github.com/retheshnair/ansible-role-lynis-repo

eval $(ssh-agent)

ssh-add /home/centos/.ssh/mykey.pem

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

