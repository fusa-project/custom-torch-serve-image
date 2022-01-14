
ARG BASE_IMAGE=pytorch/torchserve

FROM ${BASE_IMAGE} AS custom-image

USER root

RUN apt-get install -y ffmpeg
