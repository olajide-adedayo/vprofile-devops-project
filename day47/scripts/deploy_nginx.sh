#!/bin/bash

set -e

# ==========================================
# Docker Deployment Automation Script (Logged)
# ==========================================

LOG_FILE="day47/deployment.log"
container_name="nginx-server"
image_name="nginx"
port="8082"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

log "Starting Deployment Process..."

# Check if container exists
if docker ps -a --format '{{.Names}}' | grep -q "^${container_name}$"; then
    log "Container already exists."

    if docker ps --format '{{.Names}}' | grep -q "^${container_name}$"; then
        log "Container is already running."
    else
        log "Starting existing container..."
        docker start $container_name | tee -a $LOG_FILE
    fi
else
    log "Creating and starting new container..."
    docker run -d -p $port:80 --name $container_name $image_name | tee -a $LOG_FILE
fi

log "Verifying container status..."
docker ps | grep $container_name | tee -a $LOG_FILE

if [ $? -eq 0 ]; then
    log "Deployment completed successfully."
else
    log "Deployment failed. Check errors above."
fi
