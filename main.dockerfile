FROM balenalib/aarch64-node:10
#RUN [ "cross-build-start" ]

RUN apt-get update &&\
    apt-get install -y \
      git curl build-essential python sudo \
      qemu binfmt-support qemu-user-binfmt

RUN git clone https://github.com/resin-os/jetson-flash.git

WORKDIR jetson-flash

RUN npm install && mkdir -p /workdir/jetson-flash-artifacts /cache

#RUN [ "cross-build-end" ]

ADD Linux_for_Tegra.tar.gz  /cache/
COPY hash.js hash.js
COPY start.sh /start.sh
ENTRYPOINT ["/start.sh"]
