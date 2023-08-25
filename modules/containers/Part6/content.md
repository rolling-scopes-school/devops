## Part 1: Introduction to Containers and Docker

### 1. Introduction to Containers

#### What are Containers and Why are They Important?

Containers are lightweight, portable, and self-sufficient units that package everything needed to run a piece of software, including the code, runtime, libraries, and system tools. They provide consistent environments across different stages of the software development and deployment lifecycle, ensuring that applications behave the same way in various environments.

> " Imagine you're a chef, and you have a bunch of different recipes you want to cook. Now, each recipe needs its own kitchen with all the right ingredients and utensils. But you don't want the flavors or ingredients from one recipe to mix up with another, right?
>
> Docker containers are like mini kitchens for each recipe. Each container holds a different recipe and has everything it needs to cook that recipe perfectly. It's like having your own little cooking space that's separate from the others.
>
> When you want to cook a recipe, you open its container and start cooking. And the best part? You can cook without worrying that the ingredients or flavors will get mixed up with the other recipes. When you're done, you clean up the container, and it's ready for the next recipe.
>
> Just like you keep your recipes organized and separate, Docker containers keep computer programs isolated and tidy. They're like special cooking stations for programs, making sure they don't interfere with each other and everything stays nice and organized." Simple explanation by Chatgpt

Key benefits of containers:

* **Isolation:** Containers isolate applications from each other and from the host system, enhancing security and preventing conflicts.
* **Portability:** Containers can run consistently on different environments, from a developer's laptop to production servers.
* **Resource Efficiency:** Containers share the host OS kernel, making them more efficient compared to traditional virtual machines.
* **Quick Deployment:** Containers can be created and started quickly, enabling fast application deployment and scaling.

#### Container vs. Virtual Machine (VM) Comparison

Ref: [https://www.infoworld.com/article/3204171/what-is-docker-the-spark-for-the-container-revolution.html](https://www.infoworld.com/article/3204171/what-is-docker-the-spark-for-the-container-revolution.html)

| Aspect                   | Containers                    | Virtual Machines        |
| ------------------------ | ----------------------------- | ----------------------- |
| **Isolation**      | Lightweight process isolation | Full OS isolation       |
| **Performance**    | Minimal overhead              | Overhead due to full OS |
| **Resource Usage** | Efficient resource sharing    | Heavier resource usage  |
| **Startup Time**   | Seconds                       | Minutes                 |
| **Footprint**      | Small                         | Larger                  |

### 2. Getting Started with Docker

#### Installing Docker on Various Platforms

Docker can be installed on different platforms. Visit the official Docker website for installation instructions tailored to your platform: [Mac](https://docs.docker.com/desktop/install/mac-install/), [Windows](https://docs.docker.com/desktop/install/windows-install/), or [Linux](https://docs.docker.com/desktop/install/linux-install/).

#### Docker Architecture: Docker Engine, Images, and Containers

Docker consists of three main components:

1. **Docker Engine:** The core component responsible for building, running, and managing containers. It includes a server, a REST API, and a command-line interface (`docker` command).
2. **Docker Images:** Images are read-only templates that define the application's file system and runtime. They are used to create containers. Images can be shared through Docker Hub or private registries.
3. **Docker Containers:** Containers are instances of Docker images. They run applications in isolated environments with their own filesystem, networking, and isolated process space.

### 3. Working with Docker Images

#### Understanding Docker Images and Layers

Docker images are composed of layers. Each layer represents a specific instruction in the Dockerfile. Layers are cached and shared between images, making image creation and distribution efficient.

#### Building Custom Docker Images using Dockerfiles

A Dockerfile is a script that defines the steps to create a Docker image. It includes instructions for installing dependencies, copying files, setting environment variables, and more.

Example Dockerfile for a simple Node.js application:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>Dockerfile</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-Dockerfile"># Use an official Node.js runtime image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port that the container will listen on
EXPOSE 8080

# Define the command to run the application
CMD ["node", "app.js"]
</code></div></div></pre>

#### Best Practices for Creating Efficient Images

* Use minimal base images.
* Combine multiple commands into a single `RUN` instruction to reduce layer count.
* Clean up unnecessary files in the same `RUN` instruction to minimize image size.
* Use `.dockerignore` to exclude irrelevant files from the build context.
* Leverage multi-stage builds to create small final images.
* Avoid running unnecessary services in the container.

### 4. Running Containers

#### Pulling and Running Docker Images from Docker Hub

You can pull and run existing Docker images from Docker Hub using the `docker run` command.

Example:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>sh</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-sh">docker run -d -p 8080:80 nginx
</code></div></div></pre>

This command pulls the NGINX image from Docker Hub and runs it as a detached container, mapping port 8080 on the host to port 80 in the container.

#### Container Lifecycle: Starting, Stopping, and Removing Containers

* `docker start <container>`: Starts a stopped container.
* `docker stop <container>`: Stops a running container gracefully.
* `docker kill <container>`: Stops a running container forcefully.
* `docker rm <container>`: Removes a stopped container.

#### Mapping Ports and Volumes Between Host and Container

* Port Mapping: Use the `-p` flag with the `docker run` command to map host ports to container ports.
* Volume Mapping: Use the `-v` flag to map host directories to directories inside the container. This allows data persistence between container restarts.

Example:

<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>sh</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-sh">docker run -d -p 8080:80 -v ~/myapp:/app myapp-container
</code></div></div></pre>

This command maps port 8080 on the host to port 80 in the container and maps the `~/myapp` directory on the host to the `/app` directory in the container.

This concludes Module 1. In the next module, we will dive deeper into Docker Compose and working with multi-container applications.

Remember to include practical exercises for students to try out the concepts discussed. These exercises could include tasks like building a Docker image, running a container, and experimenting with port and volume mapping.
