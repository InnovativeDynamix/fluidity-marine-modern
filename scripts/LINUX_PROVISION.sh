#!/bin/bash
# LINUX_PROVISION.sh - Sunday Launch Script
# Target: Ubuntu 22.04+ (64GB RAM Machine)

echo "🚀 Initiating Natasha's Command Center Provisioning..."

# 1. Update & Core Tools
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl build-essential unzip docker.io

# 2. Node.js v22 (Astro Requirement)
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs

# 3. Local AI: Ollama
curl -fsSL https://ollama.com/install.sh | sh
ollama pull llama3
ollama pull deepseek-coder

# 4. Repo Setup
mkdir -p ~/src
cd ~/src
git clone git@github.com:InnovativeDynamix/fluidity-marine-modern.git

echo "✅ Provisioning Complete. Welcome Home, Natasha."
