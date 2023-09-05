#!/bin/bash

# Define your project directory
PROJECT_DIR="/D:/CICD_PIPELINE"


# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git and try again."
    exit 1
fi

# Change to the project directory
cd "$PROJECT_DIR"

# Pull the latest code from your GitHub repository (replace with your repository URL)
git pull origin main

# Restart Nginx (replace 'sudo systemctl restart nginx' with the appropriate command for your system)
sudo systemctl restart nginx

echo "Deployment complete."
