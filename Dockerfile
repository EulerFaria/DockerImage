FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER Euler Rodrigues de Sousa Faria <eulerodriguesousa@gmail.com>
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install libsm6 libxrender1 libxext -y
RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install matplotlib
RUN pip3 install scikit-learn
RUN pip3 install deap
RUN pip3 install pandas
RUN pip3 install seaborn
RUN pip3 install opencv-contrib-python
RUN pip3 install -U bcolz
RUN pip3 install graphviz
RUN pip3 install sklearn_pandas
RUN pip3 install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl 
RUN pip3 install torchvision
RUN pip3 install tqdm
