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

# Install Miniforge
echo "Installing Miniforge..."
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
chmod +x ./Miniforge3-Linux-x86_64.sh
./Miniforge3-Linux-x86_64.sh -b

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/home/$USER/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/home/$USER/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

mamba activate
rm ./Miniforge3-Linux-x86_64.sh

# Create an environment for gen-ai
mamba env create -f windows-env.yml -y
mamba activate gen-ai
pip3 install torch --index-url https://download.pytorch.org/whl/cu121

# Move up one folder
cd ..

# Clone Stable Diffusion
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# Clone text-generation-webui - may not use this in the end
git clone https://github.com/oobabooga/text-generation-webui.git
