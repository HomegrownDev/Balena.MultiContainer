FROM charliedev.azurecr.io/wifi-connect:latest

ENV INITSYSTEM on

EXPOSE 80 8080

COPY startup.sh /

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl --interace wlan0 --fail https://www.githubstatus.com/ || exit 1" ]