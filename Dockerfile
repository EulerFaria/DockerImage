FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER Euler Rodrigues de Sousa Faria <eulerodriguesousa@gmail.com>
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install libsm6 libxrender1 -y
RUN apt install libxext6
RUN pip3 install ['awscli', 'bcolz', 'bleach', 'certifi', 'cycler',
          'decorator', 'entrypoints', 'feather-format', 'graphviz',
          'html5lib', 'ipykernel', 'ipython', 'ipython-genutils',
          'ipywidgets', 'isoweek', 'jedi', 'Jinja2', 'jsonschema',
          'jupyter', 'jupyter-client', 'jupyter-console', 'jupyter_contrib_nbextensions',
          'jupyter-core', 'kaggle-cli', 'MarkupSafe','matplotlib', 'mistune', 
          'nbconvert', 'nbformat', 'notebook', 'numpy', 'olefile', 'opencv-python', 'pandas',
          'pandas_summary', 'pandocfilters', 'pexpect', 'pickleshare', 
          'Pillow', 'plotnine', 'prompt-toolkit','ptyprocess', 'Pygments',
          'pyparsing', 'python-dateutil', 'pytz', 'PyYAML', 'pyzmq', 'qtconsole', 'scipy',
          'seaborn', 'simplegeneric', 'six', 'sklearn_pandas', 'terminado', 'testpath', 
          'torchtext', 'tornado', 'tqdm', 'traitlets', 'wcwidth', 'webencodings', 'widgetsnbextension']

RUN pip3 install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl 
