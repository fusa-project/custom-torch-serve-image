
ARG BASE_IMAGE=pytorch/torchserve

FROM ${BASE_IMAGE} AS custom-image

USER root

RUN apt-get update && apt-get install -y ffmpeg libsndfile1 libsndfile1-dev python3-pip

COPY requirements.txt ./
RUN pip3 install -r requirements.txt

RUN git clone https://github.com/fusa-project/fusa-net-utils.git

RUN cd fusa-net-utils && pip3 install -e .
