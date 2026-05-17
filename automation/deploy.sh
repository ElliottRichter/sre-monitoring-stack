#!/bin/bash

echo "========================================="
echo " SRE Monitoring Stack Deployment Script "
echo "========================================="

echo ""
echo "[1/7] Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo ""
echo "[2/7] Installing Docker..."
sudo apt install -y docker.io

echo ""
echo "[3/7] Enabling Docker service..."
sudo systemctl enable docker
sudo systemctl start docker

echo ""
echo "[4/7] Installing Docker Compose plugin..."
sudo apt install -y docker-compose-v2

echo ""
echo "[5/7] Verifying Docker installation..."
docker --version
docker compose version

echo ""
echo "[6/7] Starting monitoring stack..."
docker compose up -d

echo ""
echo "[7/7] Validating running containers..."
docker ps

echo ""
echo "========================================="
echo " Deployment Complete "
echo "========================================="

echo ""
echo "Access services using:"
echo "Grafana:       http://YOUR-IP:3000"
echo "Prometheus:    http://YOUR-IP:9090"
echo "Alertmanager:  http://YOUR-IP:9093"
echo "Uptime Kuma:   http://YOUR-IP:3001"
