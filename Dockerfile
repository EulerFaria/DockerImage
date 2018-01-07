FROM docker pull deeprig/fastai-course-1
MAINTAINER Euler Rodrigues de Sousa Faria <eulerodriguesousa@gmail.com>
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN pip install install http://download.pytorch.org/whl/cu90/torch-0.3.0.post4-cp27-cp27mu-linux_x86_64.whl 
RUN pip install torchvision
RUN pip install tqdm
