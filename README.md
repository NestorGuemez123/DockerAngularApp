# Docker Angular App

## About
This repo is a demo about how to integrate docker in the development process. It also illustrates how to setup a CI/CD pipeline using [Github Actions](https://github.com/features/actions) to run automated tests, push docker images to docker hub.

## To use this repo

### First time running a new repo
If you've just created a new repo, this could be helpful to get you started. To generate the initial structure of this project, we used:
```
docker-compose -f docker-compose.seed.yml run web-seed
```

### Starting this repo
To start using this repo with its content just run:
```
docker-compose -f docker-compose.dev.yml up
```
You'll have to run this command everytime you **npm install** something on the **web-dev** container
```
docker cp web-dev:/usr/src/app/package-lock.json web && \
docker cp web-dev:/usr/src/app/node_modules - > web/temp_node_modules.tar && \
    tar -xf web/temp_node_modules.tar -C web && \
    rm -f web/temp_node_modules.tar
```

### See what production containers will look like
In order to see the production containers that are generated locally, just run:

```
docker-compose -f docker-compose.prod.yml up --build
```
