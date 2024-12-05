# Temporarily make installations non-interactive
export DEBIAN_FRONTEND=noninteractive

# Move up one folder
cd ..

# Install Miniforge
echo "Installing Miniforge..."
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
chmod +x ./Miniforge3-Linux-x86_64.sh
./Miniforge3-Linux-x86_64.sh -b
source ~/.bashrc

# Install Ollama
echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

# Install and setup ranger
sudo apt update
sudo apt-get install -y ranger
echo "ranger=ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"" >> .bashrc

# Get some Ollama models
echo "Getting some Ollama models..."
ollama pull moondream
ollama pull dolphin-phi
ollama list

# Create an environment for gen-ai
mamba create --name gen-ai python=3.10
mamba activate gen-ai

# todo - clone stable diffusion, clone text-generation-webui
# todo pip install ollama, gpt4all, whisper, etc