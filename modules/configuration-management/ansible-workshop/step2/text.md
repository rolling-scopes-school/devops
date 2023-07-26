## Dynamic Inventory

Once we validated the requirements, we will create the dynamic inventory in `dynamic_docker.yaml` file.

Dynamic inventory information is generated dynamically at runtime rather than being defined in a static inventory file. Instead of manually maintaining an inventory file, dynamic inventory allows Ansible to retrieve host information from external sources. Ansible can draw inventory, group, and variable information from sources like AWS, GCP, OpenStack, and more.

The idea is to create a inventory with groups based on the label *type* of each container.

We will use the Docker plugin following the official documentation: https://docs.ansible.com/ansible/latest/collections/community/docker/docker_containers_inventory.html

## Gathering Dynamic Inventory Hosts Data

First, we will define the Docker plugin and the host, by referencing the Docker Sock (where local Docker daemon is listening by default). Besides, enable the verbose_output to later use the `ansible-inventory` command and identify all the available dynamic inventory data per container. 

```yaml
# dynamic_docker.yaml
---
plugin: community.docker.docker_containers
docker_host: unix://var/run/docker.sock
verbose_output: true
```{{copy}}

At this point, to retrieve all the dynamic inventory data per container and based on that build our groups, we can use the `ansible-inventory` command. The `-i`{{}} flag let us use a specific dynamic file, the `--list`{{}} will output all hosts info.

```sh
ansible-inventory -i dynamic_docker.yaml --list
```{{exec}}

This will give us an extensive response of all docker containers dynamic inventory data. If we try to find the labels in this json response, we could find them in the following order: `container_name -> docker_config -> Labels`. For example the db1 container should have the following structure: 

```json
{
  "db1": {
    ...
    "docker_config": {
      ...
      "Labels": {
        ...
        - "org.opencontainers.image.ref.name": "ubuntu",
        - "org.opencontainers.image.version": "22.04",
        - "type": "db" 
      }
    }
  }
}
```

## Creating Dynamic Inventory Groups

Based on this information, we need to create two different groups, one for `web`{{}} and the other one for `db`{{}}. To achieve this, we can use the `keyed_group`{{}} parameter.

With `keyed_group`{{}}, you can define groups in your inventory file based on the values of specific variables associated with each host. The variables used as keys must be present in the dynamic inventory data. For this scenario, we will use the key as `docker_config.Labels.type` and Ansible will detect the `web`{{}} and `db`{{}} values. The `leading_separator`{{}} parameter will let us omit a leading underscore (or other separator) if no prefix is given.

```yaml
keyed_groups:
  - prefix: ''
    separator: ''
    key: 'docker_config.Labels.type'
leading_separator: false
```{{copy}}

Lets validate the Inventory graph:

```sh
ansible-inventory --graph -i dynamic_docker.yaml
```{{exec}}
The tree graph shows us 3 groups, `db`, `ungrouped` and `web`. And its corresponding hosts/containers.

```sh
@all:
  |--@db:
  |  |--db1
  |--@ungrouped:
  |--@web:
  |  |--web1
```{{copy}}

***NOTE:*** You can interact with the `keyed_group` modifying the `prefix`, `separator` and `key` to get a better understanding of the inventory behavior. *Just don't forget to roll back your changes once you are ready to continue!*

## Adding Custom Variables 

Before moving forward, in this dynamic inventory file, you can also define custom variables for each host using the `compose`{{}} parameter, and use them in the playbook execution. These variables are created based on dynamic inventory data. For example, we will add a variable called `server_type`{{}} to identify the group that host belongs. 

```yaml
compose: 
  server_type: 'docker_config.Labels.type'
```{{copy}}

## Solution
<details>
<summary>Click to expand</summary>

Create the dynamic inventory file

```sh
cd /root/
nano dynamic_docker.yaml
```{{exec}}

Add the code to the file and save it.

```yaml
# dynamic_docker.yaml
---
plugin: community.docker.docker_containers
docker_host: unix://var/run/docker.sock
verbose_output: true
keyed_groups:
  - prefix: ''
    separator: ''
    key: 'docker_config.Labels.type'
leading_separator: false
compose: 
  server_type: 'docker_config.Labels.type'
```{{copy}}

Validate the inventory is working as expected.

```sh
ansible-inventory --graph -i dynamic_docker.yaml
```{{exec}}

</details>