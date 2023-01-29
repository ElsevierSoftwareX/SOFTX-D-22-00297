#!/bin/bash
# balena deploy admin/rpi4-c00 -m --emulated --debug \
#     --buildArg TARGETPLATFORM=linux/arm64/v8 \
#     --buildArg BUILDPLATFORM=linux/arm64/v8 \
#     --buildArg TARGETARCH=arm64 \
#     --buildArg TARGETOS=linux

balena deploy admin/rpi4c00 -m -h 192.168.50.100 -p 2375 --debug --build
