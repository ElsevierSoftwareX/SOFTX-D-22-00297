FROM --platform=${TARGETPLATFORM:-linux/arm64} telegraf:1.22.0-alpine

RUN rm -rfv /etc/telegraf/telegraf.conf
COPY telegraf.conf /etc/telegraf/telegraf.conf