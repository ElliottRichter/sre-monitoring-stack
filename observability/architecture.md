# Observability Stack Architecture

## Objective

This observability environment was built to develop practical Site Reliability Engineering (SRE) skills focused on monitoring, alerting, uptime validation, and operational visibility.

The stack was deployed using Docker Compose on Ubuntu Server.

---

# Stack Components

| Component | Purpose |
|---|---|
| Prometheus | Metrics collection and alert evaluation |
| Grafana | Visualization dashboards |
| Node Exporter | Linux host metrics |
| Alertmanager | Alert routing and management |
| Uptime Kuma | External uptime monitoring |
| Docker Compose | Multi-container orchestration |

---

# Architecture Diagram

```text
                 +------------------+
                 |  Node Exporter   |
                 |   Port: 9100     |
                 +------------------+
                           |
                           v
                 +------------------+
                 |   Prometheus     |
                 |   Port: 9090     |
                 +------------------+
                    |            |
                    |            |
                    v            v
         +----------------+   +------------------+
         |    Grafana     |   |  Alertmanager    |
         |   Port: 3000   |   |   Port: 9093     |
         +----------------+   +------------------+

                 +------------------+
                 |   Uptime Kuma    |
                 |   Port: 3001     |
                 +------------------+
                           |
                           v
            Monitors All Stack Components
```

---

# Monitoring Workflow

## Metrics Collection

Prometheus scrapes metrics exposed by Node Exporter.

---

## Visualization

Grafana visualizes time-series metrics through dashboards.

---

## Alerting

Prometheus evaluates alert rules and forwards alerts to Alertmanager.

---

## Uptime Validation

Uptime Kuma validates external availability of stack services.

---

# Operational Testing

Failure simulation testing was performed by intentionally stopping services to validate:

- Alert triggering
- Uptime monitoring
- Service visibility
- Monitoring pipeline functionality

---

# Troubleshooting Encountered

## Prometheus Port Conflict

### Root Cause

An existing Prometheus service outside Docker occupied port 9090.

### Resolution

- Identified active process
- Removed conflicting service
- Restarted Docker stack

---

## Alertmanager Connectivity Failure

### Root Cause

Docker container DNS resolution failed between Prometheus and Alertmanager.

### Resolution

Prometheus was configured to communicate using the VM IP address.

---

# Skills Demonstrated

- Monitoring and Observability
- Metrics Collection
- Alerting Pipelines
- Uptime Monitoring
- Docker Operations
- Infrastructure Troubleshooting
- Service Validation
- Technical Documentation
