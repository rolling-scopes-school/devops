## Part 3: Introduction to Kubernetes

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/10. Containers/Part3), follow the following steps to run your first container using Kubernetes:

1. Start a local registry

   `docker run -d -p 5000:5000 --name local-registry registry:2`{{exec}}
3. Tag to push to local registry

   `docker tag myfirstcontainer:latest localhost:5000/myfirstcontainer:latest`{{exec}}
4. Push to local registry

   `docker push localhost:5000/myfirstcontainer:latest`{{exec}}
1. Verify your kubectl intallation

   `kubectl version`{{exec}}
5. Apply the Pod definition to create the Pod in your Kubernetes cluster

   `kubectl apply -f pod.yaml`{{exec}}
6. Verify that the Pod is running and ready:

   `kubectl get pods`{{exec}}
7. To access the container logs, use

   `kubectl logs fastapi-pod`{{exec}}
8. Expose the port of your pod to test if it is running

   `kubectl port-forward fastapi-pod 8300:8000 &`{{exec}}
9. Check application with curl

   `curl localhost:8300`{{exec}}
10. Delete your pod

    `kubectl delete pod fastapi-pod`{{exec}}
11. **Now, complete the replicaset.yaml file to create two replicas of the fastapi application and run it(Take as example the pod.yaml file with image and imagepullpolicy). Click in validate once you are ready.**

    `kubectl apply -f replicaset.yaml`{{exec}}
