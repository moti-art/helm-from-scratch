# Helm Assignment Answers

## Part 2 & 3: Helm Upgrade and Install
**Question:** Why do we use `helm upgrade --install`?
**Answer:** We use the `--install` flag with `upgrade` to ensure idempotency. If the release does not exist, Helm will install it; if it already exists, Helm will upgrade it to the new version defined in the templates and values. This is a best practice in CI/CD pipelines to ensure the desired state is always applied.

## Part 4: Rollback and History
**Question:** How does Helm manage versions?
**Answer:** Helm maintains a revision history for every release. Every time an install, upgrade, or rollback occurs, the revision number increases. Using `helm rollback`, we can revert the cluster state to a specific previous revision, which is crucial for recovering from failed deployments.

## Part 5: ConfigMap and Secret Usage
**Question:** How are ConfigMaps and Secrets integrated into the application?
**Answer:** 1. **ConfigMap:** Used for non-sensitive configuration like the `message` text. It allows changing application behavior without modifying the container image.
2. **Secret:** Used for sensitive data like the `apiToken`, stored as a Base64 encoded string in Kubernetes.
3. **Integration:** Both are injected into the Deployment and DaemonSet using the `envFrom` field. This maps all keys from the ConfigMap/Secret as environment variables inside the containers.

## Part 6: DaemonSet vs Deployment
**Question:** What is the difference between the two?
**Answer:** A **Deployment** manages a specified number of replicas across the cluster, usually for stateless applications. A **DaemonSet** ensures that exactly one copy of the pod runs on every node in the cluster (or a subset of nodes), which is ideal for logs collection, monitoring agents, or networking plugins.