## Ansible Roles

Ansible roles are a way to organize and encapsulate reusable parts of Ansible playbooks. They provide a structured and modular approach to writing configurations and allow you to share and reuse configurations across different playbooks and projects. Roles help make your Ansible playbooks more maintainable, scalable, and easier to understand.

Once we have the dynamic inventory and grouped the hosts, we are going to create our main `playbook`{{}} and four `roles`{{}}: `apache`{{}}, `mysql`{{}}, `wordpress`{{}} and `prerequisites`{{}}.

## Ansible Project Structure
At the end we should have the following directory structure:

```yaml
ansible-workshop/
├── roles/
│   ├── apache/
│   │   ├── tasks/
│   │   │   └── main.yaml
│   │   ├── templates/
│   │   │   └── apache.conf.j2
│   │   └── handlers/
│   │       └── main.yaml
│   ├── mysql/
│   │   └── tasks/
│   │       └── main.yaml
│   ├── prerequisites/
│   │   └── tasks/
│   │       └── main.yaml
│   └── wordpress/
│       ├── tasks/
│       │   └── main.yaml
│       └── templates/
│           └── wp-config.php.j2
├── vars/
│   └── default.yaml
└── main.yaml
```

It's important to clarify why all roles have a `task`{{}} subfolder and `main.yaml`{{}} name. This is because Ansible by default will look in each directory within a role for a `main.yaml`{{}} file when the roles tasks are used within a playbook. The same way with the handlers, a `main.yaml`{{}} file will be looked by default. You can see more information about role folder and best-practices in the following link: https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_reuse_roles.html

Let's start creating the folders:

```sh
mkdir ansible-workshop
cd ansible-workshop
mkdir roles
mkdir vars
cd roles
mkdir -p apache/tasks
mkdir -p apache/templates
mkdir -p apache/handlers
mkdir -p mysql/tasks
mkdir -p prerequisites/tasks
mkdir -p wordpress/tasks
mkdir -p wordpress/templates
```{{exec}}

## Prerequisites Role

Once we have all the folders, lets create the `prerequisites role`{{}}. In this role, we will define installation tasks that needs to be executed in all hosts. 

We are going to use the `apt`{{}} and `pip`{{}} parameters to install packages. The `loop`{{}} parameter allows us to execute the same command using the `item`{{}} variable as iterator. To declare variables within a task, you need to use the format `{{ variable_name }}`{{}}.

Besides, it may be useful to run only specific parts of it instead of running the entire playbook. You can do this with Ansible tags.

Finally, the `when`{{}} is like an if statement to filter which hosts will execute this task. As you can see, we are using the custom variable that we created in the Dynamic Inventory `server_type`{{}}. With this approach, we can invoke the role to all Ansible hosts.

## Solution

Let's create the main.yaml

```sh
cd /root/ansible-workshop/roles/prerequisites/tasks
nano main.yaml
```{{exec}}

```yaml
# /root/ansible-workshop/roles/prerequisites/tasks/main.yaml
---
- name: Install prerequisites
  apt: name=aptitude update_cache=yes state=latest force_apt_get=yes
  tags: prerequisites

- name: Install Web Packages
  apt: name={{ item }} update_cache=yes state=latest
  loop: [ 'apache2', 'php', 'php-mysql', 'libapache2-mod-php', 'mysql-client' ]
  when: server_type == 'web'
  tags: prerequisites

- name: Install DB Packages
  apt: name={{ item }} update_cache=yes state=latest
  loop: [ 'mysql-server', 'mysql-client', 'python3-mysqldb', 'libmysqlclient-dev' ]
  when: server_type == 'db'
  tags: prerequisites

- name: Install pymysql python package
  pip:
    name: pymysql
  when: server_type == 'db'
  tags: prerequisites

- name: Install PHP Extensions
  apt: name={{ item }} update_cache=yes state=latest
  loop: "{{ php_modules }}"
  when: server_type == 'web'
  tags: prerequisites
```{{copy}}

