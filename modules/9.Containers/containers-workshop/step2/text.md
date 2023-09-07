## Part 2: Docker Compose and Multi-Container Applications

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/9.Containers/Par2), follow the following steps to run your first docker container:

> **Take a moment in step 7 to go to verify button and check what happens, Can you explain it?**

1. Verify your docker compose intallation

   `docker-compose --version`{{exec}}
2. Go to /app

   `cd devops/modules/9.Containers/app`{{exec}}
3. Run the docker compose app with prepared file

   `docker-compose up`{{exec}}
4. CTRL+C to close application logs
5. Run the docker compose app with prepared file in daemon mode

   `docker-compose up -d`{{exec}}
6. List running containers and copy your container id

   `docker ps`{{exec}}
   `export containerid=`{{copy}}
7. Stop your docker container using your id

   `docker stop $containerid`{{exec}}`
8. Start your docker container using your id

   `docker start $containerid`{{exec}}
9. Kill your docker container using your id

   `docker kill $containerid`{{exec}}
10. Delete your docker container using your id

    `docker rm $containerid`{{exec}}
11. Run your recently created docker image to validate the task

    `docker-compose up -d`{{exec}}
