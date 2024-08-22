#!/bin/bash

echo "Worker Initiated"

echo "Launching SD"
python -u /stable-diffusion-webui/launch.py

echo "Starting WebUI API"
python -u /stable-diffusion-webui/webui.py --xformers --listen --skip-python-version-check --skip-torch-cuda-test --ckpt /model.safetensors --port 3000 --api &

echo "Starting RunPod Handler"
python -u /rp_handler.py
