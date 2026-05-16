# Kubernetes Commands Used

## View Nodes

```bash
kubectl get nodes
```

---

## View Pods

```bash
kubectl get pods
```

---

## View Deployments

```bash
kubectl get deployments
```

---

## Create Deployment

```bash
kubectl create deployment nginx --image=nginx
```

---

## Scale Deployment

```bash
kubectl scale deployment nginx --replicas=3
```

---

## Delete Pod

```bash
kubectl delete pod PODNAME
```

---

## Describe Pod

```bash
kubectl describe pod PODNAME
```

---

## View Logs

```bash
kubectl logs PODNAME
```
