
ARG BASE_IMAGE=pytorch/torchserve

FROM ${BASE_IMAGE} AS custom-image

USER root

RUN apt-get update && apt-get install -y ffmpeg libsndfile1 libsndfile1-dev

RUN pip install -r requirements.txt

RUN git clone https://github.com/fusa-project/fusa-net-utils/ 

RUN cd fusa-net-utils

RUN pip install -e .
