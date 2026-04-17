# Day 43 - Docker Fundamentals (Nginx Container Deployment)

## Objective
To gain hands-on experience with Docker by running a real containerized web server (Nginx), managing images, and understanding container lifecycle.

---

## What I Did

- Installed and verified Docker environment
- Pulled official Nginx image from Docker Hub
- Ran a detached container using port mapping (8081:80)
- Accessed Nginx web server via browser (localhost:8081)
- Managed Docker images locally
- Verified container lifecycle using Docker commands

---

## Key Commands Used

```bash
docker run -d -p 8081:80 nginx
docker ps
docker ps -a
docker images
