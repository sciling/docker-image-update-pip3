ARG BASE_IMAGE="tensorflow/tensorflow:0.12.0-py3"
FROM ${BASE_IMAGE}
RUN apt-get update -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       libffi-dev \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/src/*
RUN python3 -m pip install --upgrade pip poetry
ENV PYTHONIOENCODING UTF-8
