## Part 5: Advanced Kubernetes Concepts

Based on the content that you can [find in the repo](https://github.com/rolling-scopes-school/devops/modules/10. Containers/Part5), follow the following steps to configure the application using volumes:

1. **Fill pod-volume.yaml to add a volume to expose the current directory. Then using kubectl create the pod and ensure it's running. Then expose your pod using (Pod local path must be /app):**

   `kubectl port-forward fastapi-pod-volume 2850:8000`{{exec}}
