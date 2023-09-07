# Part 1: Introduction to Containers and Docker

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/9.Containers/Par1), follow the following steps to run your first docker container:

1. Verify your docker intallation

   ```sh
   docker --version
   ```{{exec}}
   ```
2. Go to /app

   ```sh
   cd devops/modules/9.Containers/app
   ```{{exec}}
   ```
3. Build the docker image using dockerfile

   ```sh
   docker build -t myfirstcontainer:latest .
   ```{{exec}}
   ```
4. Run your recently created docker image

   ```sh
   docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest
   ```{{exec}}
   ```
5. List running containers and copy your container id

   ```sh
   docker ps
   ```{{exec}}

   export containerid=YOURCONTAINERID
   ```{{exec}}
   ```
6. Stop your docker container using your id

   ```sh
   docker stop $containerid
   ```{{exec}}
   ```
7. Start your docker container using your id

   ```sh
   docker start $containerid
   ```{{exec}}
   ```
8. Kill your docker container using your id

   ```sh
   docker kill $containerid
   ```{{exec}}
   ```
9. Delete your docker container using your id

   ```sh
   docker rm $containerid
   ```{{exec}}
   ```
10. Run your recently created docker image to validate the task

      ```sh
      docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest
      ```{{exec}}
      ```
