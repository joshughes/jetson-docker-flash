FROM node:8-stretch

RUN apt-get update && apt-get install -y git curl build-essential python sudo

RUN git clone https://github.com/resin-os/jetson-flash.git

WORKDIR jetson-flash

RUN npm install && mkdir /workdir 

ENTRYPOINT ["bin/cmd.js", "-p", "-o", "/workdir", "-f"]
