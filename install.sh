#!/usr/bin/bash -i

# Temporarily make installations non-interactive
export DEBIAN_FRONTEND=noninteractive

# Install Ollama
echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

# Install and setup ranger
sudo apt update
sudo apt-get install -y ranger tesseract-ocr
echo "alias ranger='. ranger'" >> ~/.bashrc

# Get some Ollama models
echo "Getting some Ollama models..."
ollama pull moondream
ollama pull dolphin-phi
ollama pull deepseek-r1:7b
ollama pull glm4:latest
ollama list

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

# Setup environment
uv sync

# get the weights file
wget https://data.pjreddie.com/files/yolov3.weights -P object-detection/