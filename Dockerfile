ARG BASE_IMAGE_NAME tensorflow/tensorflow
ARG TARGET_IMAGE_NAME sciling/tensorflow
ARG BASE_IMAGE_VERSION 0.12.0-py3
FROM ${BASE_IMAGE_NAME}:${BASE_IMAGE_VERSION}
RUN python3 -m pip install --upgrade pip
