#!/usr/bin/bash  -i

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

# Install Miniforge
echo "Installing Miniforge..."
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
chmod +x ./Miniforge3-Linux-x86_64.sh

bash ./Miniforge3-Linux-x86_64.sh -b
/home/$USER/miniforge3/bin/conda init
rm ./Miniforge3-Linux-x86_64.sh
source ~/.bashrc
conda activate
conda create --name gen-ai python=3.10
conda activate gen-ai
cd generative-ai-with-python
pip install -r requirements.txt
