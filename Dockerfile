FROM node:20-alpine3.19 as BUILDER
LABEL Description="Contains TacoHouse Pterostats image"


WORKDIR /opt/app/

ARG TARGETPLATFORM
ENV TARGETPLATFORM=${TARGETPLATFORM:-linux/amd64}

COPY events ./events
COPY handlers ./handlers
COPY index.js ./index.js
COPY package.json ./package.json
COPY docker_run_cmd.sh ./docker_run_cmd.sh
COPY config.yml /opt/config/config.yml



VOLUME  /opt/config

#Main Run Commands
WORKDIR /opt/app/

ENTRYPOINT /opt/app/docker_run_cmd.sh