***NOTE***: Installing the scenario might take some minutes, please wait. Also by default we are going to use `nano` command-line editor. Some tasks will open this editor automatically, you should copy the code, paste it in the editor and save it with `CTRL+S` and `CTRL+X`

First check that Ansible is installed validating the version and validate that Docker plugin is also installed.

Check Ansible version

```sh
ansible --version
```{{exec}}

Check Docker plugin

```sh
ansible-galaxy collection list | grep -i docker
```{{exec}}

Then, check the running Docker containers and there should be 2 (db1, web1).

  ```sh
  docker ps
  ```{{exec}}