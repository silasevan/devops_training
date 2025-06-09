# 🐳 Minikube Setup on Linux

Minikube is a tool that lets you run Kubernetes locally. It runs a single-node Kubernetes cluster inside a VM (or container) on your local machine for users looking to try out Kubernetes or develop with it day-to-day.

This guide walks you through installing and starting Minikube on a Linux system.

---

## 📋 Prerequisites

Before installing Minikube, ensure your system meets the following requirements:

* A Linux system with a **64-bit processor**.
* **Virtualization support** enabled in BIOS (VT-x or AMD-V).
* A container or VM manager (e.g., Docker, KVM, VirtualBox).
* Internet access.

You’ll also need:

* **curl**
* **sudo/root privileges**

---

## 💠 Step 1: Install Required Tools

### 1. Install `kubectl`

`kubectl` is the command line tool for interacting with your Kubernetes cluster.

```bash
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

Verify installation:

```bash
kubectl version --client
```

---

### 2. Install Minikube

Download the latest version:

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

Check Minikube version:

```bash
minikube version
```

---

### 3. Install a Hypervisor or Container Runtime

Minikube supports several drivers. Choose one that best suits your setup:

* Docker (recommended)
* VirtualBox
* KVM

#### Install Docker (recommended)

```bash
sudo apt update
sudo apt install -y docker.io
sudo usermod -aG docker $USER
newgrp docker
```

Enable Docker service:

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

Verify Docker:

```bash
docker version
```

---

## 🚀 Step 2: Start Minikube

Start Minikube using Docker driver (or your preferred driver):

```bash
minikube start --driver=docker
```

> 🔄 The first start may take a few minutes as Minikube downloads images.

Check cluster status:

```bash
minikube status
```

---

## 🧪 Step 3: Use Your Kubernetes Cluster

Deploy a sample application:

```bash
kubectl create deployment hello-minikube --image=kicbase/echo-server:1.0
kubectl expose deployment hello-minikube --type=NodePort --port=8080
```

Access the service:

```bash
minikube service hello-minikube
```

---

## 📦 Useful Minikube Commands

| Command                | Description                   |
| ---------------------- | ----------------------------- |
| `minikube start`       | Starts a local cluster        |
| `minikube stop`        | Stops the local cluster       |
| `minikube delete`      | Deletes the cluster           |
| `minikube dashboard`   | Launches Kubernetes dashboard |
| `kubectl get pods`     | Lists running pods            |
| `minikube addons list` | Shows available add-ons       |

---

## 🧹 Cleanup

To stop and delete the Minikube cluster:

```bash
minikube stop
minikube delete
```

---

<img src="./screenshots/1.png>

## 🚹 Troubleshooting

* **Q: Minikube fails to start with Docker?**
  A: Ensure your user is in the `docker` group and Docker is running.

* **Q: `docker: permission denied`?**
  A: Run `newgrp docker` or log out and back in.

* **Q: Can't access service via browser?**
  A: Use `minikube service <service-name>` to open the correct URL.

---

## 📚 References

* [Minikube Official Documentation](https://minikube.sigs.k8s.io/docs/)
* [Kubernetes Docs](https://kubernetes.io/docs/)

---

## 💡 Author

Created by [Ivang Silas Onda](#)
License: MIT
