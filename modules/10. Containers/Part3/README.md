
## Part 3: Introduction to Kubernetes

### 1. Introduction to Kubernetes

#### What is Kubernetes and Why is it Important?

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It abstracts the underlying infrastructure and provides tools for deploying, maintaining, and scaling applications with ease.

Kubernetes is crucial for managing complex applications composed of multiple containers, handling scaling, load balancing, and ensuring high availability.

#### Kubernetes Components: Master and Nodes

Kubernetes architecture consists of two main components:

1. **Control Plane (Master):** The control plane manages the overall state of the cluster. It includes components such as the API server, etcd (key-value store), scheduler, controller manager, and more.
2. **Nodes:** Nodes are the worker machines that run containerized applications. Each node hosts pods, which are the smallest deployable units in Kubernetes. Nodes are managed by the control plane.

### 2. Setting Up a Kubernetes Cluster

#### Installing Kubernetes Locally

For local development and learning purposes, you can use Minikube, which sets up a single-node Kubernetes cluster on your local machine. Here's how to do it:

1. **Install Hypervisor (VirtualBox, KVM, or Docker Desktop):** Minikube requires a hypervisor to create a virtual machine for Kubernetes. Install a supported hypervisor based on your operating system.
2. **[Install Minikube](https://minikube.sigs.k8s.io/docs/start/):** Download and install Minikube from the official website or package manager for your OS. 
3. **Start Minikube:** Open a terminal and run the following command to start Minikube with the default driver (VirtualBox):

   ```bash
   minikube start
   ```
4. **Interact with Minikube:** Once Minikube is running, you can interact with your local Kubernetes cluster using `kubectl`, the Kubernetes command-line tool. Configure `kubectl` to use the Minikube cluster:

   ```bash
   kubectl config use-context minikube
   ```

   Verify the cluster is running:

   ```bash
   kubectl cluster-info
   ```
5. **Explore Kubernetes:** You now have a local Kubernetes cluster running. You can create and manage pods, deployments, services, and other Kubernetes resources using `kubectl`.

### 3. Pods and ReplicaSets

#### Creating Pods

A pod is the smallest deployable unit in Kubernetes. It encapsulates one or more containers, shared storage, and network resources. Containers within a pod share the same network namespace and can communicate using `localhost`.

Example pod definition:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: nginx-container
      image: nginx
```

#### Using ReplicaSets for Scaling and Load Distribution

ReplicaSets ensure that a specified number of pod replicas are running at all times. They are used for scaling and maintaining the desired number of instances of a pod.

Example ReplicaSet definition:

```yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: nginx-replicaset
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
          image: nginx
```
