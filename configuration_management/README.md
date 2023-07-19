# Configuration Management
## What is Configuration Management
Is the process of maintaining servers, VMs or computers changes in a desired, consistent state. Removing the need of configure them manually or through customs scripts, reducing complexity and errors. **Making systems configuration  predicable and scalable.** 

These tools assist you in deploying and managing software on existing cloud infrastructure, whether you're setting up a virtual machine from scratch or enhancing an existing one. For instance, you can initiate and terminate services, deploy or upgrade applications, enforce security protocols, or execute a diverse range of additional configuration tasks.

**NOTE: They do not attempt to solve the problem of provisioning or updating infrastructure. In that case use Infrastructure as Code tools such as Terraform.**


<div align="center">
    <img src="cm.png">
</div>

<p>&nbsp;</p>

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
#### *Declarative files*
Declarative files handle the **WHAT** rather than the **HOW**. By focusing on the desired outcome instead of the specific steps to achieve it, declarative files abstract away unnecessary complexity. This approach simplifies the management process and allows users to concentrate on the essential aspects of their tasks.
#### *Idempotency*
Is a property where no matter how many times you run a configuration file, the outcome should be the same. The tools assess the current state of the system against the desired final state. If the desired state has already been achieved, the tools determine that no further actions are needed and exit gracefully without applying any unnecessary changes. This idempotent behavior helps maintain system stability, avoids unnecessary configuration drift, and minimizes the risk of unintended modifications.
#### *Version Control*
Version control systems enable teams to track and manage changes made to configuration files over time. This provides several benefits such as enhances collaboration, traceability, reproducibility, and agility, making it an invaluable tool for effectively managing and maintaining configurations.
#### *Testing*
Testing allows you to validate configuration changes throughout development lifecycle. It helps identify any potential issues, conflicts, or unintended consequences that may arise from the changes. Besides it involves verifying that the configured components, settings, and dependencies are functioning correctly and producing the expected results. Being an integral part of CI/CD pipelines ensuring that changes are thoroughly tested before being released.
#### *Modularity*
Modularity allows you to container different logical or functional divisions including best practices and compliance. To shared these containers across multiple teams or environments and get consistency. For example you can create modules related to network settings, database configurations, applications-specific configurations, etc. Within modularity, versioning is a key concept to track enhancements, fixes and compatibility.  
#### *Paralellism*
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
- name: Install and configure Nginx
  hosts: webservers
  become: true

  tasks:
    - name: Install Nginx package
      apt:
        name: nginx
        state: present

    - name: Enable and start Nginx service
      service:
        name: nginx
        state: started
        enabled: yes

    - name: Copy Nginx configuration file
      template:
        src: nginx.conf.j2
        dest: /etc/nginx/nginx.conf
        owner: root
        group: root
        mode: '0644'
      notify:
        - Restart Nginx service

  handlers:
    - name: Restart Nginx service
      service:
        name: nginx
        state: restarted
```

### Inventory

The inventory file(s) serve as a crucial input to Ansible, providing the context for executing tasks and configurations on target hosts. By properly defining hosts, groups, and variables in the inventory, you can effectively manage and orchestrate the desired infrastructure using Ansible playbooks. During playbook execution, you can specify the inventory file to use by using the `-i` or `--inventory` flag when running the ansible-playbook command. This allows you to select the appropriate inventory file for the target environment or operation.

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

Refers to a mechanism where the inventory information is generated dynamically at runtime rather than being defined in a static inventory file. Instead of manually maintaining an inventory file, dynamic inventory allows Ansible to retrieve host information from external sources. Ansible can draw inventory, group, and variable information from sources like AWS, GCP, OpenStack, and more. The same as with a static inventory, during playbook execution, you can specify the dynamic inventory file to use by using the `-i` or `--inventory` flag when running the ansible-playbook command.

```yaml
---
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

* Ansible makes DevOps process easier by automating the deployment of internally developed applications to your environment systems. Ansible lets you quickly and easily deploy multi-tier apps. You won’t need to write custom code to automate your systems; you list the tasks required to be done by writing a playbook, and Ansible will figure out how to get your systems to the state you want them to be in. In other words, you won’t have to configure the applications on every machine manually.
* With application deployment, you need to manage front-end, back-end services, databases, networks, storage, and so on. Also, you need to make sure that all the tasks are handled in the proper order.
* As with application deployment, security policies can be implemented along with other automated processes. If you configure the security details on the control machine and run the associated playbook, all the remote hosts will automatically be updated with those details. That means you won’t need to monitor each machine for security compliance continually manually.

## Chef

Chef is a powerful and flexible configuration management tool designed to streamline and automate the management of infrastructure and applications at scale. With Chef, organizations can easily define, deploy, and manage the desired state of their systems, ensuring consistency and reliability across their entire IT environment.

At its core, Chef operates on a client-server architecture. The Chef server acts as a centralized repository for all the configuration data and cookbooks, which are sets of instructions for configuring and managing various components of the infrastructure. The Chef clients, installed on target systems, communicate with the server to retrieve the necessary configurations and apply them locally.

Chef resources are defined using a simple and declarative Ruby-based language called the Chef DSL (Domain-Specific Language). By specifying the desired state of resources in recipes and cookbooks, Chef ensures that the system configuration remains consistent over time.

### Recipies

Chef recipes provide a powerful way to express and manage system configurations. They allow for the automation of complex tasks, such as installing software, configuring files, managing services, and more. By using recipes, you can define and enforce consistent configurations across your infrastructure, making it easier to scale, maintain, and ensure reliability.

Recipes are typically bundled together in cookbooks, which are the primary units of organization in Chef. Cookbooks provide a structured way to group related recipes, templates, files, and other resources, making it easier to manage and share configuration code within an organization or community.

```ruby
# Recipe: webserver::nginx

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[nginx]', :delayed
end
```
### Cookbooks

Cookbooks provide a structured and modular approach to managing system configurations in Chef. They allow for code reuse, encapsulation of logic, and organization of related resources. By leveraging cookbooks, you can easily manage and distribute configuration code, enforce consistency across systems, and enable collaboration and sharing within the Chef community.

The cookbook's structure consists of a recipes directory where the recipe file (`nginx.rb`) resides, a templates directory that holds the template file (`nginx.conf.erb`), and a `metadata.rb` file that contains information about the cookbook, such as its name and dependencies.

```
webserver/
├── recipes/
│   └── nginx.rb
├── templates/
│   └── default/
│       └── nginx.conf.erb
└── metadata.rb
```

### Chef Benefits

* Eliminates the need for manual intervention in system configuration and management, reducing human error and freeing up valuable time for IT teams.

* Uses a DSL (Domain-Specific Language) based on Ruby to declare more easily complex configurations with less code.

* Is designed to handle large-scale infrastructures, enabling organizations to manage thousands of nodes efficiently and consistently.

* Supports a wide range of operating systems and platforms, enabling organizations to manage environments seamlessly.

* Has an active community that contributes cookbooks and plugins, making it easy to leverage and share best practices with other users.

## Puppet



# Workshop

```
apt-get -y install ansible
ansible-galaxy collection install community.docker
docker run -dit --name web1 ubuntu --label product:web
docker run -dit --name web2 ubuntu --label product:web
docker run -dit --name db ubuntu --label product:db
ansible-inventory --graph -i docker.yaml
ansible-inventory -i docker.yaml -v --list


plugin: community.docker.docker_containers
docker_host: unix://var/run/docker.sock
verbose_output: true
debug: true
keyed_groups:
  - prefix: ''
    separator: ''
    key: 'docker_config.Labels'
leading_separator: false

```