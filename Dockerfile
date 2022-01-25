
ARG BASE_IMAGE=pytorch/torchserve

FROM ${BASE_IMAGE} AS custom-image

USER root

RUN apt-get update && apt-get install -y ffmpeg

RUN pip install --no-cache-dir gdown
