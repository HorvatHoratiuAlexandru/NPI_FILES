#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Set the working directory to the parent directory of the script
cd "$SCRIPT_DIR/../.."

# Build Docker image
docker build -t npi_backend:latest -f backend_docker .

# Start Docker Compose
docker-compose up
