# Generative AI with Python

## Setup

### WSL Installation

1. Open the Powershell
2. Enter the command `wsl.exe --install Ubuntu` and press ENTER
3. Wait for the installation to complete
3. Reboot the machine

### Getting the Workshop Files

1. Launch Ubuntu
2. You will be asked to give a username and password. Some very simple like `ual` is perfectly fine.
3. Copy and paste the following command then hit ENTER:

```shell
git clone https://github.com/creativetechnologylab/generative-ai-workshop.git \
  && cd generative-ai-workshop \
  && chmod +x install.sh env.sh \
  && . ./install.sh \
  && . ./env.sh \
  && conda activate gen-ai
```

<!-- May not need the final command. Also need to double-check if it all works. -->

This should download all the workshop files and create the Python environment we need.

### Preparing Visual Studio Code

1. Launch Visual Studio Code
2. Go to the Extentions menu
3. Search for "WSL"
4. Install the WSL extension
5. Open the `generative-ai-with-python` folder.
6. Open the file `code\generative-ai.ipynb`
7. At this stage Visual Studio Code will ask you if you wish to install some extra extensions - say **yes**

## Basic Terminal Commands

| Command | Description | Example |
|----------|--------------|----------|
| `pwd` | Show current location | `pwd` |
| `ls` | List files and directories | `ls -la` |
| `cd` | Move directory | `cd Documents` |
| `mkdir` | Create a new directory | `mkdir new_folder` |
| `rm` | Remove files or directories | `rm file.txt` |
| `echo` | Print text to terminal or redirect output | `echo "Hello"` |
| `chmod` | Change file permissions | `chmod +x script.sh` |
