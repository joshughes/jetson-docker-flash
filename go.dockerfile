FROM balenalib/aarch64-debian-golang:latest 




COPY start.sh /start.sh
ENTRYPOINT ["/start.sh"]
