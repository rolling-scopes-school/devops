## Part 2: Docker Compose and Multi-Container Applications

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/10.Containers/Part2), follow the following steps to run your first docker container:

1. Verify your docker compose intallation

   `docker-compose --version`{{exec}}
2. **Write a docker compose file in docker-compose.yaml to expose the container we build, remember that the container should be exposed in port 8000.**
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
