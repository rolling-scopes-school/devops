# Part 1: Introduction to Containers and Docker

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/9.Containers/Part1), follow the following steps to run your first docker container:

> **Take a moment in step 6 to go to verify button and check what happens, Can you explain it?**

1. Verify your docker intallation

   `docker --version`{{exec}}
2. Build the docker image using dockerfile

   `docker build -t localhost:5000/myfirstcontainer:latest .`{{exec}}
3. Tag to push to local registry

   `docker tag myfirstcontainer:latest localhost:5000/myfirstcontainer:latest`{{exec}}
4. Push to local registry

   `docker push localhost:5000/myfirstcontainer:latest`{{exec}}
5. Run your recently created docker image

   `containerid=$(docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest) | echo $containerid`{{exec}}
6. List running containers

   `docker ps`{{exec}}
7. Stop your docker container

   `docker stop $containerid`{{exec}}`
8. Start your docker container

   `docker start $containerid`{{exec}}
9. Kill your docker container

   `docker kill $containerid`{{exec}}
10. Delete your docker container

    `docker rm $containerid`{{exec}}
11. Run your recently created docker image to validate the task

    `docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest`{{exec}}
