# Alerting Workflow

## Objective

The alerting system was designed to detect service outages and validate observability workflows.

---

# Alert Flow

```text
Node Exporter Failure
        ↓
Prometheus Detects Target Down
        ↓
Alert Rule Evaluated
        ↓
Alert Sent To Alertmanager
        ↓
Alert Displayed In Alertmanager
```

---

# Alert Rule

## InstanceDown

Triggers when a monitored target becomes unreachable.

```yaml
- alert: InstanceDown
  expr: up == 0
  for: 1m
```

---

# Validation Testing

The Node Exporter container was intentionally stopped to verify:

- Prometheus alert triggering
- Alertmanager functionality
- Uptime Kuma outage detection

---

# Troubleshooting Encountered

## Container DNS Resolution Failure

### Issue

Prometheus could not resolve the Alertmanager container hostname.

### Resolution

Prometheus was configured to use the host VM IP address for Alertmanager communication.

---

# Lessons Learned

- Container networking requires validation.
- Monitoring pipelines should always be tested through simulated failures.
- Alerting systems are critical for operational awareness.
