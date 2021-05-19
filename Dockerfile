ARG BASE_IMAGE="tensorflow/tensorflow:0.12.0-py3"
FROM ${BASE_IMAGE}
RUN python3 -m pip install --upgrade pip
