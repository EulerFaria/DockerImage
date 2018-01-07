FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER Euler Rodrigues de Sousa Faria <eulerodriguesousa@gmail.com>
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install libsm6 libxrender1 -y
RUN apt install libxext6
RUN pip3 install fastai
