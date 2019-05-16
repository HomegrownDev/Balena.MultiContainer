#Initial Dockerfile for WiFi-Connect

FROM balenalib/rpi-debian-node

EXPOSE 80

COPY startup.sh /

WORKDIR /usr/src/app

RUN [ "install_packages", "curl", "dnsmasq", "wireless-tools" ]

RUN curl https://api.github.com/repos/balena-io/wifi-connect/releases/latest -s | \ 
    grep -hoG '"browser_download_url": ".*.rpi.tar.gz"' | \
    xargs -n1 curl -Ls \ | \
    tar -xvz -C /usr/src/app

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl --fail https://www.githubstatus.com/ || exit 1" ]

ENTRYPOINT [ "sh", "/startup.sh" ]