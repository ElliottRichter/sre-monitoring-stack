
# SRE Monitoring Stack

## Abstract

Self-hosted monitoring and observability stack for SRE training built using Grafana, Prometheus, Node Exporter, and Docker Compose.

## Overview

This project is a self-hosted monitoring and observability environment created for Site Reliability Engineering training and infrastructure monitoring practice.

The goal of this project is to build a production-style monitoring stack capable of collecting metrics, visualizing infrastructure performance, and improving troubleshooting workflows.

---

## Technologies Used

- Docker
- Docker Compose
- Grafana
- Prometheus
- Ubuntu Server Linux

---

## Features

- CPU monitoring
- RAM monitoring
- Disk usage monitoring
- Infrastructure metrics collection
- Dashboard visualization
- Containerized deployment

---

## Project Goals

- Learn observability fundamentals
- Practice infrastructure monitoring
- Improve Linux and Docker skills
- Simulate production-style monitoring environments
- Build portfolio-ready SRE projects

---

## Architecture

- Node Exporter -> Prometheus -> Grafana


---

## Ports

- Service       		Port
    Grafana 			3000
    Prometheus			9090
    Node Explorer		9100


---

## SCreenshots

- Grafana

![Grafana Running](screenshots/grafana_running.png)

![Grafana Dashboard](screenshots/grafana_dashboard.png)

![Grafana Datasource Success](screenshots/grafana_datasource.png)


- Prometheus

![Prometheus Running](screenshots/prometheus_running.png)

![Prometheus Targets](screenshots/prometheus_target_health.png)


- Docker

![Docker Container Creation and Install](screenshots/docker_creation.png)

![Docker PS](screenshots/docker_ps.png)


- Git Repository Sync

![GitHub Repository connection](screenshots/git_repo_push.png)


- Node Exporter

![Node Exporter Scrape Success](screenshots/node_scrape.png)


---

## Deployment Steps

- Clone Repo

git clone "MYREPO"


- Start Stack

docker compose up -d


---

## Lessons Learned

- Docker networking troubleshooting
- Prometheus scrape target configuration
- Grafana datasource mapping
- Port conflict troubleshooting
- YAML formatting importance
- Monitoring stack architecture
- Docker installation and container creation
- Docker networking troubleshooting


---

## Future Improvements

- Loki log aggregation
- Alertmanager integration
- Kubernetes deployment
- SSL/TLS reverse proxy
- Uptime monitoring
- Multi-node monitoring
- Automation Scripts
- Deeper dive into these fundamental concepts
- Tutorials and guides for replication

---

## Author

Elliott Richter
