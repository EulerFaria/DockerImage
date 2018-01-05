# DockerImage

## Description 

Template created to develop an docker image for completing [FastAi](http://fast.ai) course. 

## Requirements

- [Docker](https://www.docker.com);
- [Nvidia-Docker 2](https://github.com/NVIDIA/nvidia-docker);

## Docker Image Features

- Cuda;
- Numpy;
- Pytorch
- Scipy;
- Sckit-learn;
- Pandas;
- Seaborn;
- Deap;


## Running docker image

Once installed the requirements run the follow comand on terminal:


```
docker run -it -p 8888:8888 --runtime=nvidia --rm -v /some/hostfolder/FastAI:/notebooks eulerfaria/fastai
```

As docker images are not persistant and you might want to save your notebooks used throughout the course, change the path `/some/hostfolder/FastAI` on the command above to a valid directory on your desktop. This command will sync the notebook folder to the folder assigned on this path.
