# Kubernetes Fundamentals Lab

## Objective

This lab was created to build foundational Kubernetes operational knowledge for Site Reliability Engineering (SRE) and DevOps environments.

The goal was to gain hands-on experience with:

- Kubernetes cluster deployment
- kubectl administration
- container orchestration
- scaling workloads
- pod lifecycle management
- troubleshooting Kubernetes services

---

# Environment

| Component | Details |
|---|---|
| OS | Ubuntu Server |
| Kubernetes Distribution | k3s |
| Container Runtime | containerd |
| Host Type | Virtual Machine |
| Deployment Type | Single-node cluster |

---

# Tasks Completed

## Installed k3s Kubernetes Cluster

Validated cluster installation and node readiness.

### Command

```bash
curl -sfL https://get.k3s.io | sh -
```

---

## Verified Cluster Status

```bash
sudo kubectl get nodes
```

---

## Deployed nginx Application

```bash
kubectl create deployment nginx --image=nginx
```

---

## Scaled Deployment

Scaled deployment replicas from 1 to 3.

```bash
kubectl scale deployment nginx --replicas=3
```

---

## Tested Kubernetes Self-Healing

Deleted a running pod and observed Kubernetes automatically recreate it.

```bash
kubectl delete pod PODNAME
```

---

# Kubernetes Concepts Learned

- Pods
- Deployments
- Desired State
- Self-Healing
- Horizontal Scaling
- Container Orchestration
- Cluster Management
- kubectl Operations

---

# Operational Lessons Learned

- Kubernetes maintains desired application state automatically.
- Deployments manage pod replication and recovery.
- kubectl provides operational visibility into cluster resources.
- Troubleshooting requires validating services, pods, logs, and networking.
- Existing Kubernetes distributions can conflict with new cluster deployments.

---

# Troubleshooting Encountered

## k3s Startup Failure

### Root Cause

An existing MicroK8s installation conflicted with k3s networking and orchestration services.

### Resolution

- Removed MicroK8s
- Rebooted the VM
- Reinstalled k3s
- Validated cluster readiness

---

# Screenshots

Screenshots are available in:

```text
kubernetes/screenshots/
```

---

# Skills Demonstrated

- Linux Administration
- Kubernetes Fundamentals
- Container Orchestration
- Troubleshooting
- Infrastructure Operations
- Observability Mindset
- Technical Documentation
