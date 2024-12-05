# Temporarily make installations non-interactive
export DEBIAN_FRONTEND=noninteractive

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

# Install Miniforge
echo "Installing Miniforge..."
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
chmod +x ./Miniforge3-Linux-x86_64.sh
./Miniforge3-Linux-x86_64.sh -b
/home/$USER/miniforge3/bin/mamba init
source ~/.bashrc

# Create an environment for gen-ai
mamba env create -f env.yml -y
mamba activate gen-ai
pip3 install torch --index-url https://download.pytorch.org/whl/cu121

# todo - clone stable diffusion, clone text-generation-webui
# todo pip install ollama, gpt4all, whisper, etc

# Move up one folder
cd ..