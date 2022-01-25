#!/bin/bash
if [ $# -ne 1 ]; then
    echo "One argument required: model_name"
    exit 0
fi
model_name=$1
gdown https://drive.google.com/drive/folders/1b9N-iNCC19lJm8hElqLetDqXTbPil2rd -O ./model-store --folder
if [ ! -f ./model-store/${model_name}.mar ]; then
   echo "Incorrect model name, file not found" 
   exit 0
fi
curl -X POST "http://localhost:8081/models?url=/home/model-server/model-store/${model_name}.mar&batch_size=3&synchronous=True"
