# Day 48 - Advanced Bash Automation (Production-Style Script)

## Objective
Enhance Docker automation by introducing dynamic input handling, structured logging, and robust error management.

---

## What Was Implemented

### 1. Parameterized Deployment
- Script accepts container name and port as runtime inputs
- Enables flexible and reusable deployments

### 2. Error Handling
- set -e ensures immediate exit on failure
- trap captures and logs unexpected errors with line reference

### 3. Logging System
- Timestamp-based logging
- Persistent log file (deployment.log)
- Combined terminal and file logging using tee

### 4. Deployment Validation
- Confirms container is running after execution
- Provides clear success/failure feedback

---

## Execution Insight

Initial deployment attempt failed due to Docker daemon not running.  
After resolving the issue, the script successfully deployed the container.

This demonstrates:
- Failure detection
- Troubleshooting workflow
- Recovery and re-execution

---

## DevOps Concepts Applied

- Automation scripting
- Fault-aware system design
- Observability through logging
- Parameterized deployments
- System validation checks

---

## Project Structure
