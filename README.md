# VProfile Multi-Tier DevOps Project

## Overview
This project demonstrates the deployment of a multi-tier Java web application (VProfile) using a DevOps approach with Vagrant and VirtualBox. It simulates a production-like environment and showcases end-to-end application deployment.

## Architecture
- DB Layer: MariaDB (db01)
- App Layer: Apache Tomcat (app01)
- Client Layer: Browser access

## Tech Stack
- Vagrant & VirtualBox
- CentOS Stream 9
- MariaDB
- Apache Tomcat
- Maven
- Java (JDK 8)

## Key Activities
- Multi-VM setup using Vagrant
- Database installation and configuration (MariaDB)
- Application build using Maven
- Deployment of WAR file on Tomcat
- Network and firewall configuration
- Troubleshooting (Java version compatibility, 404 errors, connectivity issues)

## Result
The VProfile application was successfully deployed and is accessible via a web browser with full backend database integration.

## Screenshots
Project screenshots will be added to showcase key stages of deployment and final application output.



## Day 40 - VProfile Infrastructure Validation & Troubleshooting

### Activities Completed:
- Verified all VMs (db01, mc01, rmq01, app01, web01) running successfully
- Tested inter-VM communication (web01 → app01 connectivity)
- Confirmed VProfile application deployment on Tomcat
- Accessed application via browser
- Captured and documented APT repository/network issues during setup

### Evidence:
- VM status screenshot
- Network connectivity test
- Application login page
- APT error troubleshooting screenshot

### Outcome:
Successfully validated full-stack VProfile infrastructure deployment using Vagrant multi-VM environment. 




## Day 41 - Networking & Infrastructure Validation (VProfile Project)

### Activities Completed:
- Verified Vagrant multi-VM environment is running (db01, mc01, rmq01, app01, web01)
- Resolved VM state issue (web01 saved → running)
- Identified web01 IP address using ip a
- Tested inter-VM communication (web01 → app01 using ping)
- Verified active services and ports using ss -tulnp
- Accessed VProfile application via browser

### Key Learning:
- Linux networking fundamentals (IP, DNS, ports)
- Vagrant VM state management
- Inter-VM communication in private networks
- System service monitoring

### Evidence:
- VM status screenshot
- web01 IP address screenshot
- ping test screenshot
- open ports screenshot
- application login page screenshot

### Outcome:
Successfully validated full-stack infrastructure connectivity and application accessibility in a multi-tier Vagrant environment.
