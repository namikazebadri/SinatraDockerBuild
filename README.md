# Sinatra Docker Image

Build docker image for Sinatra application.

## Build Image
To build image run this command (__change the tag name & version with your preferred tag name & version__).

`$ docker build . -t myorganization/myimage:1.0.0`

## Running a Container from Image

To create a container from the image, run this command (__change the tag name & version with your preferred tag name & version__).

`$ docker run -d -p 9292:9292 --name sinatra-app myorganization/myimage:1.0.0`

Then you can access the app from the browser with this url: `http://127.0.0.1:9292`

## Dockerhub image

This repository is proven by running build in Dockerhub, you can see the result [here](https://hub.docker.com/r/namikazebadri/sinatra-app).