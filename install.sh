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

# Move up one folder
cd ..

# Clone Stable Diffusion
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# Clone text-generation-webui - may not use this in the end
git clone https://github.com/oobabooga/text-generation-webui.git

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

# Back into the workshop folder
cd generative-ai-workshop
uv sync

# get the weights file
wget https://data.pjreddie.com/files/yolov3.weights -P object-detection/