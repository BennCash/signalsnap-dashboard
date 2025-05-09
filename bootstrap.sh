#!/bin/bash

echo "🚀 Bootstrapping INNN Agent Environment..."

# Update system and install dependencies
apt update && apt install -y git curl unzip

# Optional: Install Node.js, Docker, etc.
# apt install -y nodejs npm docker.io

# Install Python and pip (if not installed)
apt install -y python3 python3-pip

# Install Pinecone SDK
pip3 install pinecone-client

# Set environment variables (example placeholder)
echo 'export PINECONE_API_KEY="your-pinecone-api-key-here"' >> ~/.bashrc
echo 'export PINECONE_ENV="us-west1-gcp"' >> ~/.bashrc
source ~/.bashrc

# Clone your agent project into /opt (example)
git clone git@github.com:BennCash/signalsnap-dashboard.git /opt/signalsnap-dashboard

echo "✅ Agent environment setup complete with Pinecone memory support."
