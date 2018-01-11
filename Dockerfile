FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER Euler Rodrigues de Sousa Faria <eulerodriguesousa@gmail.com>

RUN apt-get update
RUN add-apt-repository ppa:jonathonf/python-3.6

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils 

RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv
RUN apt-get install -y git

# update pip
RUN python3.6 -m pip install pip --upgrade
RUN python3.6 -m pip install wheel

RUN apt-get install libsm6 libxrender1 -y
RUN apt install libxext6
RUN pip3 install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp36-cp36m-linux_x86_64.whl 
RUN pip3 install torchvision
RUN pip3 install fastai
RUN pip install ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension 
