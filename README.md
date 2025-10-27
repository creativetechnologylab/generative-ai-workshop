# Generative AI with Python

## Setup

### WSL Installation

1. Open the Powershell
2. Enter the command: `wsl.exe --install Ubuntu`
3. Reboot

### Getting the Workshop Files

1. Launch Ubuntu
2. Give a very basic username/password. `ual` is perfectly fine.
3. Enter the following command:

```shell
git clone https://github.com/creativetechnologylab/generative-ai-workshop.git \
  && cd generative-ai-workshop \
  && chmod +x install.sh env.sh \
  && ./install.sh \
  && ./env.sh \
  && conda activate gen-ai
```

This should download all the workshop files and create the Python environment we need.

### Preparing Visual Studio Code

1. Launch Visual Studio Code
2. Go to the Extentions menu
3. Search for "WSL"
4. Install the WSL extension

TODO.