# Surrealist Docker

This is docker image for [Surrealist](https://github.com/StarlaneStudios/Surrealist) GUI for [SurrealDB](https://github.com/surrealdb/surrealdb).

## Running

### Docker

After build image of your choice you can run it with:
```sh
docker run -d -p 8080:80 0xmimir/surrealist
```

After that you can open Surrealist on [http://localhost:8080/](http://localhost:8080/).


### Docker compose

To run with docker compose run:
```sh
docker compose up -d
```
or 
```sh
docker-compose up -d
```

Depending on what version of docker you have.
To include docker image in you project, add following to your `docker-compose.yml` file:
```yml
services:
  surrealist:
    image: 0xmimir/surrealist
    restart: always
    extra_hosts:
      - "localhost:host-gateway"
    ports:
      - 8080:80
```

## Building

To build latest image for release run:
```sh
docker build -t surrealist:main .
```

To build latest image for nightly run:
```sh
docker build -t surrealist:nightly . --build-arg branch=nightly
```

To build image for branch `BRANCH` run:
```sh
docker build -t surrealist:BRANCH . --build-arg branch=BRANCH
```