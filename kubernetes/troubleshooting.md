# Kubernetes Troubleshooting Notes

## Issue: k3s Failed To Start

### Symptoms

- k3s service stuck in activation loop
- kubectl unable to communicate with API
- service exiting with status=1

---

# Investigation Steps

Checked:

- systemctl status k3s
- journalctl logs
- container runtime status
- Kubernetes API readiness
- listening ports
- existing Kubernetes installations

---

# Root Cause

MicroK8s was already installed on the VM, causing conflicts with:

- Kubernetes networking
- API services
- orchestration components
- container runtime behavior

---

# Resolution

- Removed MicroK8s
- Rebooted VM
- Reinstalled k3s
- Verified cluster health

---

# Lessons Learned

- Avoid running multiple Kubernetes distributions simultaneously.
- Validate existing orchestration platforms before installation.
- Always review system logs before reinstalling services.
- Kubernetes troubleshooting heavily relies on logs and service status validation.
