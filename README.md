# DockerImage

## Description 

Template created to develop an docker image for completing [fastai v2](http://forums.fast.ai/t/welcome-to-part-1-v2/5787) course. 

## Requirements

- [Docker](https://www.docker.com);
- [Nvidia-Docker 2](https://github.com/NVIDIA/nvidia-docker);

## Docker Image Features

All packages required to run the fastai course.

## Running docker image

Once installed the requirements run the follow comand on your terminal:


```
docker run -it -p 8888:8888 --runtime=nvidia --rm -v /some/hostfolder/FastAI:/notebooks eulerfaria/fastai
```

As docker images are not persistant and you might want to save your notebooks used throughout the course, you need to change the path `/some/hostfolder/FastAI` on the command above to a valid directory on your desktop. This command will sync the notebook folder to the folder assigned on this path.
