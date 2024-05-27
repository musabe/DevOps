# DevOps Setup with 5 Ubuntu VMs

## Overview
This guide provides steps to set up a DevOps environment using 5 Ubuntu VMs. Each VM is designated for a specific purpose within the DevOps lifecycle: Continuous Integration/Continuous Deployment (CI/CD), monitoring, logging, configuration management, and container orchestration.

## Prerequisites
- 5 Ubuntu VMs (version 20.04 or later recommended)
- SSH access to each VM
- Basic understanding of Linux command-line operations

## VM Designation
1. **CI/CD Server**: Runs Jenkins
2. **Monitoring Server**: Runs Prometheus and Grafana
3. **Logging Server**: Runs ELK stack (Elasticsearch, Logstash, Kibana)
4. **Configuration Management Server**: Runs Ansible
5. **Container Orchestration Server**: Runs Kubernetes (K8s)

## Setup Steps

### 1. CI/CD Server (Jenkins)
**VM Name:** `ci-cd-server`

#### Install Jenkins
```bash
sudo apt update
sudo apt install -y openjdk-11-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

