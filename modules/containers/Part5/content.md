
## Part 5: Advanced Kubernetes Concepts

### 1. ConfigMaps and Secrets

#### Managing Configuration Data using ConfigMaps

ConfigMaps allow you to decouple configuration data from application code. You can store configuration settings, environment variables, and other configuration data in a ConfigMap.

Creating a ConfigMap:

```bash
kubectl create configmap my-config --from-literal=key1=value1 --from-literal=key2=value2
```

Using ConfigMap in a pod:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: nginx-container
      image: nginx
      envFrom:
        - configMapRef:
            name: my-config
```

#### Handling Sensitive Data using Secrets

Secrets are used to store sensitive information like passwords, API keys, and tokens. They are base64 encoded and can be mounted as volumes or exposed as environment variables in pods.

Creating a Secret:

```bash
kubectl create secret generic my-secret --from-literal=username=user --from-literal=password=pass
```

Using Secret in a pod:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: nginx-container
      image: nginx
      envFrom:
        - secretRef:
            name: my-secret
```

### 2. Persistent Volumes and StatefulSets

#### Managing Stateful Applications using StatefulSets

StatefulSets are used to manage stateful applications that require stable network identities and persistent storage. Each pod in a StatefulSet has a unique, stable hostname and persistent storage.

Creating a StatefulSet:

```yaml
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: web
spec:
  serviceName: "web"
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
          image: nginx
```

#### Configuring Persistent Volumes for Data Persistence

Persistent Volumes (PVs) are used to provide persistent storage resources to pods. Persistent Volume Claims (PVCs) are used by pods to request storage resources.

Example Persistent Volume Claim:

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: my-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
```

Using the PVC in a pod:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: nginx-container
      image: nginx
      volumeMounts:
        - mountPath: "/app/data"
          name: data-volume
  volumes:
    - name: data-volume
      persistentVolumeClaim:
        claimName: my-pvc
```

### 3. Introduction to Helm

#### Packaging, Sharing, and Deploying Applications using Helm Charts

> For installation steps of Helm, check [this guide](https://helm.sh/docs/intro/install/)

Helm is a package manager for Kubernetes that helps you define, install, and upgrade even the most complex Kubernetes applications.

A Helm chart is a package that contains all the resources necessary to run a set of microservices. It includes templates, values, and optionally, pre-packaged Kubernetes manifests.

Creating a Helm chart structure:

```bash
helm create mychart
```

Installing a Helm chart:

```bash
helm install my-release ./mychart
```

Upgrading a Helm chart:

```bash
helm upgrade my-release ./mychart
```
