#!/bin/bash
timestamp=`date +%Y/%m/%d-%H:%M:%S`
gdown https://drive.google.com/drive/folders/1b9N-iNCC19lJm8hElqLetDqXTbPil2rd -O /root/custom-torch-serve-image/model-store --folder
echo "Model folder synced, $timestamp"