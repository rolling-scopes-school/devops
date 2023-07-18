# Configuration Management
## What is Configuration Management
Is the process of maintaining servers, VMs or computers changes in a desired, consistent state. Removing the need of configure them manually or through customs scripts, reducing complexity and errors. **Making systems configuration  predicable and scalable.** 

These tools assist you in deploying and managing software on existing cloud infrastructure, whether you're setting up a virtual machine from scratch or enhancing an existing one. For instance, you can initiate and terminate services, deploy or upgrade applications, enforce security protocols, or execute a diverse range of additional configuration tasks.

**NOTE: They do not attempt to solve the problem of provisioning or updating infrastructure. In that case use Infrastructure as Code tools such as Terraform.**


<div align="center">
    <img src="cm2.png">
</div>


Establishing a dependable, uniform, and properly maintained IT environment on a large scale requires configuration management. Instead of depending on individuals to carry out laborious manual configuration assignments, automation enables teams to consistently deploy and configure components more efficiently, with reduced human involvement to minimize errors. Moreover, it facilitates the maintenance of consistent system settings across various environments (development, staging, production) throughout the application's lifecycle, thereby reducing both performance and security concerns.

### Benefits of using Configuration Management

Configuration management tools help developers keep track of the current state of applications and services. Typical them help teams to:
* Classify and manage systems by groups and subgroups. 
* Centrally modify base configurations based on versions.
* Roll out new settings to all applicable systems. 
* Automate system identification, patches, and updates.
* Identify outdated, poorly performing, and noncompliant configurations. 
* Prioritize necessary actions. 
* Access and apply prescriptive remediation.

### Configuration Management concepts
Most of Configuration Management tools are based on Infrastructure as Code principles.
#### Declarative files
Declarative files handle the **WHAT** rather than the **HOW**. By focusing on the desired outcome instead of the specific steps to achieve it, declarative files abstract away unnecessary complexity. This approach simplifies the management process and allows users to concentrate on the essential aspects of their tasks.
#### Idempotency
Is a property where no matter how many times you run a configuration file, the outcome should be the same. The tools assess the current state of the system against the desired final state. If the desired state has already been achieved, the tools determine that no further actions are needed and exit gracefully without applying any unnecessary changes. This idempotent behavior helps maintain system stability, avoids unnecessary configuration drift, and minimizes the risk of unintended modifications.
#### Version Control
Version control systems enable teams to track and manage changes made to configuration files over time. This provides several benefits such as enhances collaboration, traceability, reproducibility, and agility, making it an invaluable tool for effectively managing and maintaining configurations.
#### Testing
Testing allows you to validate configuration changes throughout development lifecycle. It helps identify any potential issues, conflicts, or unintended consequences that may arise from the changes. Besides it involves verifying that the configured components, settings, and dependencies are functioning correctly and producing the expected results. Being an integral part of CI/CD pipelines ensuring that changes are thoroughly tested before being released.
#### Modularity
Modularity allows you to container different logical or functional divisions including best practices and compliance. To shared these containers across multiple teams or environments and get consistency. For example you can create modules related to network settings, database configurations, applications-specific configurations, etc. Within modularity, versioning is a key concept to track enhancements, fixes and compatibility.  
#### Paralellism
Refers to the capability of executing multiple configuration tasks simultaneously or in parallel. It involves leveraging the power of parallel processing to increase efficiency, speed up deployments, and optimize resource utilization. Instead of executing tasks sequentially, try distributing configuration tasks across multiple resources or nodes, minimizing delays and bottlenecks. Be aware of the dependencies between specific tasks or prerequisites, this correct order execution will maintain consistency and avoid conflicts.

# Common Tools

## Ansible

Ansible is a simple IT automation engine that automates configuration management, application deployment, intra-service orchestration, and many other IT needs. Being designed for multi-tier deployments since day one, Ansible models your IT infrastructure by describing how all of your systems inter-relate, rather than just managing one system at a time.

It uses no agents and no additional custom security infrastructure, so it’s easy to deploy - and most importantly, it uses a very simple language (YAML, in the form of Ansible Playbooks) that allow you to describe your automation jobs in a straighforward way.

Ansible works by connecting to your nodes and pushing out scripts called “Ansible modules” to them. Most modules accept parameters that describe the desired state of the system. Ansible then executes these modules (over SSH by default), and removes them when finished. Your library of modules can reside on any machine, and there are no servers, daemons, or databases required.

### Playbooks
Offer a repeatable, re-usable, simple configuration management and multi-machine deployment system, one that is well suited to deploying complex applications. If you need to execute a task with Ansible more than once, write a playbook and put it under source control. Then you can use the playbook to push out new configuration or confirm the configuration of remote systems. Playbooks can declare configurations, orchestrate steps and define sync/async taks.
Playbooks are expressed in YAML format with a minimum of syntax, for example:
```yaml
---
- name: Install and configure web server
  hosts: web_servers
  become: true
  
  tasks:
    - name: Update package cache
      apt:
        update_cache: yes
      when: ansible_os_family == "Debian"

    - name: Install Apache web server
      package:
        name: apache2
        state: present

    - name: Start Apache service
      service:
        name: apache2
        state: started
        enabled: yes
```

### Inventory
By default, Ansible represents the machines it manages in a file (INI, YAML, and so on) that puts all of your managed machines in groups of your own choosing.

```yaml
---
[webservers]
web1.example.com
web2.example.com
172.10.0.20

[dbservers]
db0.example.com
db1.example.com
```

### Dynamic Inventory

If there’s another source of truth in your infrastructure, Ansible can also connect to that. Ansible can draw inventory, group, and variable information from sources like EC2, GCP, OpenStack, and more.

```yaml
plugin: amazon.aws.aws_ec2
regions:
  - us-east-1
  - us-east-2
keyed_groups:
  # add hosts to tag_Name_value groups for each aws_ec2 host's tags.Name variable.
  - key: tags.Name
    prefix: tag_Name_
    separator: ""
groups:
  # add hosts to the group dev if any of the dictionary's keys or values is the word 'dev'.
  development: "'dev' in (tags|list)"
filters:
  tag:Name:
    - 'instance-01'
    - 'instance-03'
compose:
  # This sets the `ansible_host` variable to connect with the private IP address without changing the hostname.
  ansible_host: private_ip_address
```

### Ansible Benefits


* Application Deployment: Ansible makes DevOps process easier by automating the deployment of internally developed applications to your environment systems. Ansible lets you quickly and easily deploy multi-tier apps. You won’t need to write custom code to automate your systems; you list the tasks required to be done by writing a playbook, and Ansible will figure out how to get your systems to the state you want them to be in. In other words, you won’t have to configure the applications on every machine manually.
* Orchestration: With application deployment, you need to manage front-end, back-end services, databases, networks, storage, and so on. Also, you need to make sure that all the tasks are handled in the proper order.
* Ansible uses automated workflows, provisioning, and more to make orchestrating tasks easy. Once you’ve defined your infrastructure using the Ansible playbooks, you can use that same orchestration wherever you need to.
*   Security and Compliance: As with application deployment, site-wide security policies (e.g. firewall rules) can be implemented along with other automated processes. If you configure the security details on the control machine and run the associated playbook, all the remote hosts will automatically be updated with those details. That means you won’t need to monitor each machine for security compliance continually manually.
*   Cloud Provisioning: With Ansible, you can provision cloud platforms, virtualized hosts, network devices, and bare-metal servers.

## Chef

## Puppet

# Workshop

```
apt-get -y install ansible
ansible-galaxy collection install community.docker
docker run -dit --name test1 ubuntu
docker run -dit --name test2 ubuntu
ansible-inventory --graph -i docker.yaml
ansible-inventory -i docker.yaml -v --list


plugin: community.docker.docker_containers
docker_host: unix://var/run/docker.sock
verbose_output: true
debug: true
keyed_groups:
  - prefix: ''
    separator: ''
    key: 'docker_config.Image'
leading_separator: false

```