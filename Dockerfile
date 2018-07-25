FROM node:8-stretch

RUN apt-get update && apt-get install -y git curl

RUN git clone https://github.com/resin-os/jetson-flash.git

WORKDIR jetson-flash

RUN npm install
