
## Part 4: Kubernetes Deployment and Services

### 1. Deployments and Rolling Updates

#### Using Deployments for Declarative Application Updates

Deployments are a higher-level abstraction over pods and ReplicaSets. They allow you to declaratively manage the desired state of your application. Deployments handle scaling, rolling updates, and rollbacks.

Example Deployment definition:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx-container
          image: nginx:1.19
```

#### Performing Rolling Updates and Rollbacks

Rolling updates allow you to update your application while maintaining availability. Kubernetes replaces pods gradually, ensuring minimal downtime. If an update causes issues, you can roll back to the previous version.

To perform a rolling update:

```bash
kubectl set image deployment/nginx-deployment nginx-container=nginx:1.20
```

To roll back to the previous version:

```bash
kubectl rollout undo deployment/nginx-deployment
```

### 2. Services and Networking

#### Exposing Applications Within a Cluster using Services

Services provide network access to a set of pods. They abstract the underlying network architecture and enable pods to communicate with each other regardless of their physical location within the cluster.

Example Service definition:

```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  selector:
    app: nginx
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: ClusterIP
```

#### ClusterIP, NodePort, and LoadBalancer Services

* **ClusterIP:** Default service type. Exposes the service on an internal IP within the cluster.
* **NodePort:** Exposes the service on the same port across all nodes in the cluster. Suitable for external access to the service.
* **LoadBalancer:** Automatically provisions an external load balancer (cloud-provider specific) and assigns a fixed, external IP to the service.

### 3. Ingress and Load Balancing

#### Configuring Ingress Controllers for External Access

Ingress provides an external entry point to services within the cluster. It allows you to define rules for routing external traffic to services based on hostnames and paths.

Example Ingress definition:

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: my-ingress
spec:
  rules:
    - host: myapp.example.com
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: nginx-service
                port:
                  number: 80
```

#### Load Balancing and SSL Termination

Ingress controllers can also handle SSL termination, enabling secure communication with your services.

Example Ingress with SSL termination:

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: my-ingress
spec:
  rules:
    - host: myapp.example.com
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: nginx-service
                port:
                  number: 80
  tls:
    - hosts:
        - myapp.example.com
      secretName: my-tls-secret
```
