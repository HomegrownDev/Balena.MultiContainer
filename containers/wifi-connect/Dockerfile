#Initial Dockerfile for WiFi-Connect
FROM balenalib/rpi-debian-node

ENV INITSYSTEM on

EXPOSE 80 8080

WORKDIR /usr/src/app

COPY startup.sh .

RUN [ "install_packages", "curl", "dnsmasq" ,"nano", "wireless-tools" ]

RUN curl https://api.github.com/repos/balena-io/wifi-connect/releases/latest -s | \ 
    grep -hoG '"browser_download_url": ".*.rpi.tar.gz"' | \
    xargs -n1 curl -Ls \ | \
    tar -xvz -C /usr/src/app

ENTRYPOINT [ "sh", "startup.sh" ]