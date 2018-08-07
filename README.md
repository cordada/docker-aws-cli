# docker-aws-cli
Docker image for AWS CLI


## Build and push image

TODO: improve this section.


### Example


Build image:
```sh
docker build .
```
```
Sending build context to Docker daemon  95.74kB
Step 1/3 : FROM python:3.6.6-alpine3.8
 ---> 267db919e15e
Step 2/3 : RUN pip install --no-cache-dir 'awscli==1.15.72' 'botocore==1.10.71'
 ---> Using cache
 ---> 2879d4f9612b
Step 3/3 : CMD ["aws", "--version"]
 ---> Using cache
 ---> 0b83e85a0757
Successfully built 0b83e85a0757
```

Tag and push image:
```sh
docker_remote_repo='docker.io/fynpal/aws-cli'
docker_src_image='0b83e85a0757'
docker_src_image_tag='awscli-1.15.72-python-3.6.6'

docker tag "$docker_src_image" "${docker_remote_repo}:${docker_src_image_tag}"
docker tag "$docker_src_image" "${docker_remote_repo}:latest"

docker login 'https://index.docker.io'

docker push "${docker_remote_repo}:${docker_src_image_tag}"
docker push "${docker_remote_repo}:latest"

docker logout 'https://index.docker.io'
```
