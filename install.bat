@echo off

scoop install main/ollama
start "" ollama serve
timeout /t 5 /nobreak > nul

ollama pull moondream
ollama pull dolphin-phi
ollama pull deepseek-r1:7b
ollama pull glm4:latest

scoop install main/pixi

pixi install
pixi run download-hf-models

curl https://data.pjreddie.com/files/yolov3.weights -o ./object-detection/yolov3.weights

pause