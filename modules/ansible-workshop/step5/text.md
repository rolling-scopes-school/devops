## Variables files

Once we have all the roles, let's move forward with the `vars`{{}} folder

It is used to store variable files. It is part of the standard directory structure for Ansible and is used to keep variables separate from the tasks and templates, promoting better organization and maintainability.

Inside the vars folder, you can create one or more YAML files containing variables specific configuration. These variables can be used within the tasks, templates, and other files in the role. By using variable files, you can easily customize the behavior of the role for different hosts, environments, or configurations.

```yaml
ansible-workshop/
├── roles/
│   └── ...
├── vars/
│   └── default.yaml
```

* The `php_modules`{{}} variable is an array of php modules used in `prerequisites` role.
* The `mysql_`{{}} variables are used to configure the MySQL server and also modify the Wordpress configuration template. 
* Here is important to highlight `mysql_host`{{}} variable because it is created based on another variable. In this case, `hostvars[groups['db'][0]]`{{}} allows us to retrieve a variable from a host, which is filtered to be first host of the groups `db`{{}}. To get the `ansible_host`{{}} value. This variable has the hostname of the db1 container, which is required to configure WordPress db host connection.
* The `http_`{{}} variables are used for Apache and WordPress configuration templates

```sh
cd /root/ansible-workshop/vars
nano default.yaml
```{{exec}}

```yaml
# ansible-workshop/vars/default.yaml
---
#System Settings
php_modules: [ 'php-curl', 'php-gd', 'php-mbstring', 'php-xml', 'php-xmlrpc', 'php-soap', 'php-intl', 'php-zip' ]

#MySQL Settings
mysql_root_password: "mysql_root_password"
mysql_db: "wordpress"
mysql_user: "rsschool"
mysql_password: "password"
mysql_host: "{{ hostvars[groups['db'][0]]['ansible_host'] }}"

#HTTP Settings
http_host: "rsschool"
http_conf: "rsschool.conf"
http_port: "80"

```{{copy}}

## Main Playbook

At this point we should have already the following structure:

```yaml
ansible-workshop
  roles
    apache
      tasks
        main.yaml
      templates
        apache.conf.j2
      handlers
        main.yaml
    mysql
      tasks
        main.yaml
    prerequisites
      tasks
        main.yaml
    wordpress
      tasks
        main.yaml
      templates
        wp-config.php.j2
  vars
    default.yaml
  main.yaml

```

This main playbook has 4 key arguments:
* `hosts`{{}}: This specifies the target hosts or groups of hosts on which the task will be executed. The value "all" indicates that the task will be applied to all hosts in the inventory.
* `gather_facts`{{}}: This is a boolean value that determines whether Ansible should gather facts about the target hosts before executing the task.
* `vars_files`{{}}: This is a list of paths to external variable files that should be included before executing the task. In this case, the task includes the variables defined in the file vars/default.yaml. These variables will be available for use in this task and in the invoked roles.
* `roles`{{}}: This is a list of roles that will be applied to the hosts defined in the "hosts" section.


***NOTE***: The playbook execution order follows a specific sequence of steps, allowing for a structured and organized way to apply configurations and automation tasks to remote hosts. 

Let's create the main playbook: 

```sh
cd /root/ansible-workshop/
nano main.yaml
```{{exec}}

```yaml
# /root/ansible-workshop/main.yaml
---
- name: Prepare all servers
  hosts: all
  gather_facts: no
  vars_files:
    - vars/default.yaml
  roles:
    - prerequisites

- name: Execute apache configuration
  hosts: web
  gather_facts: no
  vars_files:
    - vars/default.yaml
  roles:
    - apache

- name: Execute MySQL configuration
  hosts: db
  gather_facts: no
  vars_files:
    - vars/default.yaml
  roles:
    - mysql

- name: Execute Wordpress configuration
  hosts: web
  gather_facts: no
  vars_files:
    - vars/default.yaml
  roles:
    - wordpress

```{{copy}}


## Apply the Ansible Playbook

The final step of our workshop is deploy our main playbook, the `ansible-playbook`{{}} command will handle this operation and the `-i`{{}} flag to specify the inventory file 

```sh
cd /root/ansible-workshop/
ansible-playbook -i /root/dynamic_docker.yaml main.yaml
```{{exec}}

This playbook will take some minutes

## Validate WordPress functionality

Once it finish, let's validate the WordPress functionality! We should get an HTTP 200

```sh
curl -I http://127.0.0.1/wp-admin/install.php
```{{exec}}
