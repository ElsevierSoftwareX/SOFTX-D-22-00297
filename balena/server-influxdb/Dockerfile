FROM --platform=${TARGETPLATFORM:-linux/arm64} influxdb:2.1-alpine

RUN rm -rfv /etc/influxdb2/config.yml
COPY config.yml /etc/influxdb2/config.yml