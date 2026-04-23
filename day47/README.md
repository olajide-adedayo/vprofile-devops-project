# Day 47 - Docker Automation with Bash (DevOps Workflow)

## Objective
Build a real-world Docker automation script using Bash that handles deployment, validation, logging, and error handling.

---

## What I Built

### 1. Automated Deployment Script
- Checks if container exists
- Avoids duplicate deployments (idempotent design)
- Starts or creates Nginx container automatically

### 2. Logging System
- Implemented structured logging using timestamps
- Logs stored in deployment.log
- Uses function-based logging for consistency

### 3. Service Validation
- Confirms container is running using docker ps
- Verifies deployment success state

### 4. Error Handling
- Added set -e for immediate failure detection
- Added conditional checks for deployment status

---

## DevOps Concepts Applied

- Infrastructure automation using Bash
- Container lifecycle management
- Logging and observability
- Idempotent script design
- Basic fault handling

---

## Files Created

- scripts/deploy_nginx.sh
- deployment.log
- screenshots/ (7 execution stages)

---

## Outcome

A production-style automation script that simulates real DevOps deployment workflows using Docker and Bash scripting.
