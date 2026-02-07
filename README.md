# Helm From Scratch - Home Assignment

This repository contains a custom Helm chart for a containerized application using `busybox`. The project demonstrates the management of various Kubernetes resources and the Helm release lifecycle.

## 🏗️ Project Structure
- **charts/myapp**: The core Helm chart including templates and values.
- **outputs/**: Logs and command outputs from installation, upgrade, and rollback tasks.
- **answers.md**: Detailed technical explanations of the Helm lifecycle and resources.

## 📦 Resources and Purposes
- **Deployment**: Manages the application lifecycle and ensures 2 replicas are running.
- **Service**: Provides a stable internal IP (ClusterIP) to access the deployment.
- **DaemonSet**: Runs a pod on every node for node-level operations.
- **ConfigMap**: Stores non-sensitive configuration (message text).
- **Secret**: Securely stores sensitive data (API Token).
- **Job**: Executes a one-time initialization task.
- **CronJob**: Runs a scheduled cleanup task every minute.

## 🛠️ Commands Used

### 1. Installation
To install the chart for the first time:
```bash
helm upgrade --install myapp ./charts/myapp