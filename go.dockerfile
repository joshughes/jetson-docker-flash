FROM balenalib/aarch64-debian-golang:latest 




COPY start2.sh /start.sh
ENTRYPOINT ["/start.sh"]
