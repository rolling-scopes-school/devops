## Part 3: Introduction to Kubernetes

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/10.Containers/Part4), follow the following steps to run your first docker container:

1. Verify your kubectl intallation

   `kubectl version`{{exec}}
2. Apply the Pod definition to create the Pod in your Kubernetes cluster

   `kubectl apply -f pod.yaml`{{exec}}
3. Verify that the Pod is running and ready:

   `kubectl get pods`{{exec}}
4. To access the container logs, use

   `kubectl logs fastapi-pod`{{exec}}
5. Expose the port of your pod to test if it is running

   `kubectl port-forward fastapi-pod 8000:8000 &`{{exec}}
6. Check application with curl

   `curl localhost:8000`{{exec}}`
7. Delete your pod

   `kubectl delete pod fastapi-pod`{{exec}}
8. **Now, complete the replicaset.yaml file to create two replicas of the fastapi application and run it. Click in validate once you are ready.**

   `kubectl apply -f replicaset.yaml`{{exec}}
