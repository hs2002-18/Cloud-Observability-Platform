# Cloud Observability Platform

A complete end-to-end DevOps and Observability project built using AWS, Terraform, Docker, Prometheus, Grafana, GitHub Actions, and Linux automation.

This project demonstrates:

* Infrastructure as Code (Terraform)
* Multi-environment deployments (DEV/PROD)
* Remote Terraform backend (S3 + DynamoDB)
* Dockerized monitoring stack
* Prometheus metrics collection
* Grafana visualization dashboards
* GitHub Actions CI/CD pipeline
* Branch-based deployment strategy
* Linux & Bash automation

---

# Tech Stack

| Category        | Technologies            |
| --------------- | ----------------------- |
| Cloud           | AWS EC2                 |
| IaC             | Terraform               |
| Monitoring      | Prometheus              |
| Visualization   | Grafana                 |
| Containers      | Docker & Docker Compose |
| CI/CD           | GitHub Actions          |
| OS              | Linux (Ubuntu)          |
| Scripting       | Bash                    |
| Version Control | Git & GitHub            |

---

# Project Architecture

```text
GitHub Push
    ↓
GitHub Actions CI/CD
    ↓
Terraform (IaC)
    ↓
AWS EC2 Infrastructure
    ↓
Docker Compose
    ↓
Prometheus + Grafana + Flask App
```

---

# Features

* Multi-environment setup (`dev` and `prod`)
* Terraform remote backend using S3 + DynamoDB
* Automated EC2 provisioning
* Dockerized monitoring stack
* Auto-provisioned Grafana datasource
* Prometheus metrics scraping
* Node Exporter integration
* CI/CD pipeline using GitHub Actions
* Safe deployment-only automation
* Infrastructure destroy support
* Branch-based deployment flow

---

# Repository Structure

```text
cloud-observability-platform/
│
├── .github/
│   └── workflows/
│       ├── dev-deploy.yml
│       └── prod-deploy.yml
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── docker/
│   └── docker-compose.yml
│
├── grafana/
│   └── provisioning/
│       ├── dashboards/
│       └── datasources/
│           └── datasource.yml
│
├── monitoring/
│   ├── dashboards/
│   ├── alerts/
│   └── prometheus.yml
│
├── scripts/
│   ├── install_docker.sh
│   ├── setup_server.sh
│   ├── deploy_monitoring.sh
│   ├── start_containers.sh
│   ├── stop_containers.sh
│   ├── restart_containers.sh
│   └── cleanup.sh
│
├── terraform/
│   ├── modules/
│   │   ├── ec2/
│   │   └── security-group/
│   │
│   ├── environments/
│   │   ├── dev/
│   │   └── prod/
│   │
│   └── scripts/
│       ├── init.sh
│       ├── plan.sh
│       ├── apply.sh
│       └── destroy.sh
│
├── .gitignore
└── README.md
```

---

# CI/CD Workflow

## DEV Flow

```text
Push to dev branch
    ↓
GitHub Actions Trigger
    ↓
Terraform Init
    ↓
Terraform Plan
    ↓
Terraform Apply
    ↓
SSH into EC2
    ↓
Deploy Monitoring Stack
```

---

## PROD Flow

```text
Push to prod branch
    ↓
GitHub Actions Trigger
    ↓
Terraform Init
    ↓
Terraform Plan
    ↓
Terraform Apply
    ↓
SSH into EC2
    ↓
Deploy Monitoring Stack
```

---

# Branching Strategy

| Branch | Purpose                             |
| ------ | ----------------------------------- |
| dev    | Development and testing environment |
| prod   | Stable production environment       |

Deployment promotion flow:

```text
dev → tested → merge into prod
```

---

# Terraform Remote Backend

This project uses:

* Amazon S3 for Terraform state storage
* DynamoDB for Terraform state locking

Benefits:

* Centralized state management
* State locking protection
* CI/CD compatible
* Team collaboration ready

---

# Monitoring Stack

## Prometheus

Used for:

* Metrics collection
* Infrastructure monitoring
* Application monitoring

---

## Grafana

Used for:

* Dashboard visualization
* CPU monitoring
* Memory monitoring
* Infrastructure observability

---

## Node Exporter

Used for:

* System metrics
* CPU metrics
* Memory metrics
* Disk metrics

---

# Dashboards

Current dashboards include:

* CPU Usage Dashboard
* Memory Usage Dashboard
* System Metrics Dashboard
* Node Exporter Monitoring

Grafana runs on:

```text
http://<EC2-PUBLIC-IP>:3000
```

---

# Prometheus Targets

Prometheus runs on:

```text
http://<EC2-PUBLIC-IP>:9090
```

---

# Prerequisites

Before running this project, ensure:

* AWS Account
* IAM User with required permissions
* AWS CLI configured
* Terraform installed
* Docker installed
* Git installed
* GitHub repository created
* SSH key pair available

---

# Required GitHub Secrets

Add these secrets in:

```text
GitHub Repository → Settings → Secrets and Variables → Actions
```

| Secret Name           | Description                  |
| --------------------- | ---------------------------- |
| AWS_ACCESS_KEY_ID     | AWS IAM access key           |
| AWS_SECRET_ACCESS_KEY | AWS IAM secret key           |
| EC2_SSH_KEY           | EC2 private PEM key contents |

---

# Setup Instructions

## Clone Repository

```bash
git clone <your-repository-url>

cd Cloud-Observability-Platform
```

---

# Terraform Deployment

## DEV Environment

```bash
cd terraform/environments/dev

bash ../../scripts/init.sh

bash ../../scripts/plan.sh

bash ../../scripts/apply.sh
```

---

## PROD Environment

```bash
cd terraform/environments/prod

bash ../../scripts/init.sh

bash ../../scripts/plan.sh

bash ../../scripts/apply.sh
```

---

# Access Grafana

```text
http://<EC2-PUBLIC-IP>:3000
```

Default credentials:

```text
Username: admin
Password: admin
```

---

# Infrastructure Destruction

## Destroy DEV

```bash
cd terraform/environments/dev

bash ../../scripts/destroy.sh
```

---

## Destroy PROD

```bash
cd terraform/environments/prod

bash ../../scripts/destroy.sh
```

---

# Important Notes

* CI/CD only performs deployment-safe operations
* Destructive scripts are never automatically executed
* Separate environments are maintained for DEV and PROD
* Docker permissions are handled using sudo for CI/CD stability

---

# Future Improvements

Possible future enhancements:

* Loki integration for centralized logging
* Alertmanager integration
* HTTPS with Nginx reverse proxy
* Custom VPC architecture
* Kubernetes deployment
* Slack/Email alerts
* Blue-Green deployments
* Terraform modules optimization

---

# Learning Outcomes

This project helped build hands-on experience with:

* AWS Infrastructure Management
* Infrastructure as Code
* Monitoring & Observability
* CI/CD Automation
* Linux Administration
* Docker Containerization
* Terraform Remote State
* GitHub Actions Workflows
* Multi-environment deployments
* Bash Automation

---

# Author

Harsh Shrimali

GitHub: [https://github.com/hs2002-18](https://github.com/hs2002-18)

---

# License

This project is for educational and portfolio purposes.
