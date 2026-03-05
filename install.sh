#!/usr/bin/bash -i

# Temporarily make installations non-interactive
export DEBIAN_FRONTEND=noninteractive

# Install and setup ranger + other useful stuff
sudo apt update
sudo apt-get install -y ranger tesseract-ocr ffmpeg zstd
echo "alias ranger='. ranger'" >> ~/.bashrc

# Install Ollama
echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

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

export HF_XET_HIGH_PERFORMANCE=1
export HF_XET_NUM_CONCURRENT_RANGE_GETS=24

uv run hf download segmind/tiny-sd
uv run hf download nitrosocke/Ghibli-Diffusion
uv run hf download SimianLuo/LCM_Dreamshaper_v7
uv run hf download lykon/dreamshaper-8
uv run hf download kandinsky-community/kandinsky-2-2-decoder
uv run hf download damo-vilab/text-to-video-ms-1.7b
uv run hf download kandinsky-community/kandinsky-2-2-prior

