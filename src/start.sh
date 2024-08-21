#!/bin/bash

echo "Worker Initiated"

echo "Starting WebUI API"
python /stable-diffusion-webui/webui.py --skip-python-version-check --skip-torch-cuda-test --ckpt /model.safetensors --port 3000 --api --skip-version-check &

echo "Starting RunPod Handler"
python -u /rp_handler.py
