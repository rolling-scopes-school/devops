# Checklist

Based on the content that you can find in content.md, follow the following steps to run your first docker container:

> To verify run `../Part3/verify.sh` and check the script log.

* [ ] Install Docker
* [ ] Go to /app
* [ ] `docker build -t myfirstcontainer:latest .`
* [ ] `docker run -d --name mycontainer -p 80:80 myfirstcontainer:latest` and verify
* [ ] `docker ps` copy the container id
* [ ] `docker stop $containerid` and verify
* [ ] `docker start $containerid` and verify
* [ ] `docker kill $containerid` and verify
* [ ] `docker rm $containerid` and verify
