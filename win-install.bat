@echo off

call scoop install main/ollama
powershell -Command "Start-Process ollama -ArgumentList 'serve' -WindowStyle Hidden"

call scoop install main/pixi

ollama pull moondream
ollama pull dolphin-phi
ollama pull deepseek-r1:7b
ollama pull glm4:latest

call code --install-extension ms-python.python
call code --install-extension ms-toolsai.jupyter
call code --install-extension renan-r-santos.pixi-code

pixi install
pixi run download-hf-models

pause