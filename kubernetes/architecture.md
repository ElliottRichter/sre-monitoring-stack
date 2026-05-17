# Kubernetes Architecture

## Objective

This Kubernetes lab environment was built to develop foundational operational knowledge for Site Reliability Engineering (SRE) and container orchestration workflows.

The environment uses a lightweight single-node Kubernetes cluster powered by k3s.

---

# Environment Overview

| Component | Purpose |
|---|---|
| k3s | Lightweight Kubernetes distribution |
| containerd | Container runtime |
| kubectl | Kubernetes administration CLI |
| nginx | Sample application deployment |
| Ubuntu Server | Host operating system |

---

# Cluster Architecture

```text
+------------------------------------------------+
|                Ubuntu Server VM                |
|                                                |
|  +------------------------------------------+  |
|  |                 k3s Cluster              |  |
|  |                                          |  |
|  |  +-------------+    +----------------+   |  |
|  |  | Deployment  | -> | nginx Pods     |   |  |
|  |  +-------------+    +----------------+   |  |
|  |                                          |  |
|  |  +-----------------------------------+   |  |
|  |  | Kubernetes Service (NodePort)     |   |  |
|  |  +-----------------------------------+   |  |
|  +------------------------------------------+  |
+------------------------------------------------+
```

---

# Core Kubernetes Concepts Demonstrated

## Pods

Pods are the smallest deployable unit in Kubernetes and contain one or more containers.

---

## Deployments

Deployments manage pod lifecycle, scaling, and self-healing behavior.

---

## Services

Services provide stable networking access to dynamic pod workloads.

---

## Desired State

Kubernetes continuously attempts to maintain the declared infrastructure state.

---

## Self-Healing

When a pod fails or is deleted, Kubernetes automatically recreates replacement pods.

---

# Operational Tasks Completed

- Installed k3s cluster
- Validated node readiness
- Created nginx deployment
- Scaled deployment replicas
- Exposed deployment via NodePort service
- Tested pod self-healing
- Investigated cluster startup failures
- Reviewed Kubernetes logs and events

---

# Troubleshooting Encountered

## k3s Startup Failure

### Root Cause

An existing MicroK8s installation conflicted with k3s networking and orchestration components.

### Resolution

- Removed MicroK8s
- Rebooted VM
- Reinstalled k3s
- Validated cluster readiness

---

# Skills Demonstrated

- Kubernetes Fundamentals
- Linux Administration
- Container Orchestration
- Infrastructure Troubleshooting
- Operational Documentation
- kubectl Administration
- Service Validation
