# Part 1: Introduction to Containers and Docker

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/9.Containers/Par1), follow the following steps to run your first docker container:

> **Take a moment in step 6 to go to verify button and check what happens, Can you explain it?**

1. Verify your docker intallation

   `docker --version`{{exec}}
2. Go to /app

   `cd devops/modules/9.Containers/app`{{exec}}
3. Build the docker image using dockerfile

   `docker build -t myfirstcontainer:latest .`{{exec}}
4. Run your recently created docker image

   `containerid=$(docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest) | echo $containerid`{{exec}}
5. List running containers

   `docker ps`{{exec}}
6. Stop your docker container

   `docker stop $containerid`{{exec}}`
7. Start your docker container

   `docker start $containerid`{{exec}}
8. Kill your docker container

   `docker kill $containerid`{{exec}}
9. Delete your docker container

   `docker rm $containerid`{{exec}}
10. Run your recently created docker image to validate the task

    `docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest`{{exec}}
