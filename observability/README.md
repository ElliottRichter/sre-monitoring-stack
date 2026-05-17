# Observability and Monitoring Stack

## Objective

This project was built to develop practical Site Reliability Engineering (SRE) and observability skills using modern monitoring and alerting tools.

The environment provides:

- Metrics collection
- Dashboard visualization
- Alerting workflows
- Uptime monitoring
- Incident visibility
- Failure testing
- Operational troubleshooting

---

# Stack Components

| Component | Purpose |
|---|---|
| Prometheus | Metrics collection and alert evaluation |
| Grafana | Dashboard visualization |
| Node Exporter | Linux host metrics |
| Alertmanager | Alert routing and management |
| Uptime Kuma | Service uptime monitoring |
| Docker Compose | Multi-container orchestration |

---

# Skills Demonstrated

- Linux Administration
- Docker Operations
- Monitoring and Observability
- Alerting Pipelines
- Infrastructure Troubleshooting
- Incident Response Concepts
- Service Health Validation
- Technical Documentation

---

# Monitoring Architecture

```text
Node Exporter
     ↓
Prometheus
     ↓
Grafana Dashboards

Prometheus
     ↓
Alertmanager

Uptime Kuma
     ↓
External Service Health Checks
```

---

# Key Features

## Metrics Collection

Prometheus scrapes metrics from Node Exporter and stores time-series monitoring data.

---

## Dashboard Visualization

Grafana dashboards provide visibility into:

- CPU usage
- Memory utilization
- Disk usage
- Network throughput
- Host health

---

## Alerting

Prometheus alert rules trigger alerts when monitored services become unavailable.

Alertmanager processes and displays alert states.

---

## Uptime Monitoring

Uptime Kuma validates external availability of services including:

- Grafana
- Prometheus
- Alertmanager
- Node Exporter

---

# Failure Simulation Testing

Service failures were intentionally simulated to validate:

- Alert triggering
- Monitoring visibility
- Uptime detection
- Operational response workflows

---

# Lessons Learned

- Monitoring alone is insufficient without alerting.
- Metrics and uptime monitoring provide complementary operational visibility.
- Container networking and service communication require validation during troubleshooting.
- Observability pipelines must be tested using real failure scenarios.
- YAML configuration formatting is critical in infrastructure tooling.

---

# Screenshots

Screenshots are located in:

```text
observability/screenshots/
```

---

# Future Improvements

- Loki log aggregation
- Kubernetes monitoring integration
- SSL/TLS reverse proxy
- Multi-node monitoring
- Centralized logging
- Notification integrations
