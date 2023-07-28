Let's learn some basic commands to work with Ansible.

We will deploy WordPress with LAMP Stack (Linux, Apache, MySQL and PHP) using Ansible. The goal is to familiarize yourself with Ansible, from verifying the tool and requirements, to create multiple roles with `tasks`{{}}, `handlers`{{}} and `templates`{{}}, and use them in a playbook with variables to configure different Instances/ Virtual Machines/ Containers.

In this KillerCoda scenario, you will follow the below steps:

1. Validate Ansible and Docker plugin installation
2. Create a dynamic inventory and gather the containers in different groups
3. Create multiple roles for each component of the applicantion (Apache, MySQL, WordPress, Prerequisites)
4. Create the main Playbook and a variables file to configure WordPress
5. Validate functionality

Ansible has already been installed in this environment and there are 2 Docker containers with the following structure:

```
Docker/
├── web1
└── db1
```

The idea of each container is to represent a unique host (Server/Virtual Machine/Instance), and let us group them into different groups based on the VM type. 

To group them, each container was created with a label that corresponds to its type (e.g. type=web/db). 
