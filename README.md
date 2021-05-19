# docker-image-update-pip3

This docker image takes an existing image and updates the pip3 version inside it.
This is necessary for kubeflow images since it uses some pip arguments that are not present in older versions and thus it fails to install pip packages.

## Instructions

Change the .env file to the values of the images you want to update, or set those values in the local environment.
```
BASE_IMAGE_NAME=tensorflow/tensorflow
TARGET_IMAGE_NAME=sciling/tensorflow
BASE_IMAGE_VERSION=0.12.0-py3
```

Then,
```
docker-compose build image
docker-compose push image
```

You may need to login into to your remote repository before pushing the image with
```
docker login
```
