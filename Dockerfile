RUN rm /etc/apt/apt.conf.d/*.*
RUN apt update
RUN apt install unzip -y
RUN apt -y upgrade --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"
RUN apt -y autoremove
RUN ufw allow 8888:8898/tcp
RUN apt -y install --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" qtdeclarative5-dev qml-module-qtquick-controls
RUN add-apt-repository ppa:graphics-drivers/ppa -y
RUN apt update
RUN mkdir downloads
RUN cd ~/downloads/
RUN wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
RUN dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
RUN apt update
RUN apt install cuda -y
RUN wget http://files.fast.ai/files/cudnn-9.1-linux-x64-v7.tgz
RUN tar xf cudnn-9.1-linux-x64-v7.tgz
RUN cp cuda/include/*.* /usr/local/cuda/include/
RUN cp cuda/lib64/*.* /usr/local/cuda/lib64/
RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b
RUN cd
RUN git clone https://github.com/fastai/fastai.git
RUN cd fastai/
RUN echo 'export PATH=~/anaconda3/bin:$PATH' >> ~/.bashrc
RUN export PATH=~/anaconda3/bin:$PATH
RUN source ~/.bashrc
RUN conda env update
RUN echo 'source activate fastai' >> ~/.bashrc
RUN source activate fastai
RUN source ~/.bashrc
RUN cd ..
RUN mkdir data
RUN cd data
RUN wget http://files.fast.ai/data/dogscats.zip
RUN unzip -q dogscats.zip
RUN cd ../fastai/courses/dl1/
RUN ln -s ~/data ./
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.ip = '*'" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
RUN pip install ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension --sys-prefix
RUN echo
RUN echo ---
RUN echo - YOU NEED TO REBOOT YOUR PAPERSPACE COMPUTER NOW
RUN echo ---
