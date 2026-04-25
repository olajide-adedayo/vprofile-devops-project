#!/bin/bash

set -e

# ==========================================
# Advanced Docker Deployment Script
# ==========================================

LOG_FILE="day48/deployment.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

error_handler() {
    log "ERROR: Script failed at line $1"
}

trap 'error_handler $LINENO' ERR

# Input arguments
container_name=$1
port=$2
image_name="nginx"

# Validate input
if [ -z "$container_name" ] || [ -z "$port" ]; then
    echo "Usage: ./deploy.sh <container_name> <port>"
    exit 1
fi

log "Starting deployment for $container_name on port $port"

# Check if container exists
if docker ps -a --format '{{.Names}}' | grep -q "^${container_name}$"; then
    log "Container exists"

    if docker ps --format '{{.Names}}' | grep -q "^${container_name}$"; then
        log "Container already running"
    else
        log "Starting container..."
        docker start $container_name | tee -a $LOG_FILE
    fi
else
    log "Creating new container..."
    docker run -d -p $port:80 --name $container_name $image_name | tee -a $LOG_FILE
fi

# Validate deployment
if docker ps | grep -q "$container_name"; then
    log "Deployment successful"
else
    log "Deployment failed"
    exit 1
fi
