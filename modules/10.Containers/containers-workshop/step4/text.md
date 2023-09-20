## Part 3: Introduction to Kubernetes

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/10.Containers/Part4), follow the following steps to run your first kubernetes deployment:

1. Verify your kubectl intallation

   `kubectl version`{{exec}}
2. Apply the deployment definition to create the Pod in your Kubernetes cluster

   `kubectl apply -f deployment.yaml`{{exec}}
3. Verify that the deployment is running and ready:

   `kubectl get pods`{{exec}}
4. Expose the port of your pod to test if it is running

   `kubectl port-forward fastapi-pod 8000:8000 &`{{exec}}
5. Check application with curl

   `curl localhost:8000`{{exec}}`
6. Delete your pod

   `kubectl delete pod YOUR_POD_NAME`{{exec}}
7. **Now, complete the service.yaml file to create to create a LoadBalancer Service for the previous deployment, be sure that you expose the deployment in port 3500.**

   `kubectl apply -f replicaset.yaml`{{exec}}
