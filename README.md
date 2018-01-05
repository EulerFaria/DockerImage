# DockerImage
Template developed used to create fastai docker image 

#Requirements

- Docker;
- Nvidia Docker 2;

# Run image

```
docker run -it -p 8888:8888 --runtime=nvidia --rm -v /some/hostfolder/FastAI:/notebooks eulerfaria/fastai
```
