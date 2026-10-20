@echo off

call scoop install main/ollama
start "" ollama serve

call scoop install main/pixi

ollama pull moondream
ollama pull dolphin-phi
ollama pull deepseek-r1:7b
ollama pull glm4:latest

pixi install
pixi run download-hf-models

pause