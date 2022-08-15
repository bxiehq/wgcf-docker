#!/usr/bin/env bash

docker run -it \
    --rm \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    --publish 127.0.0.1:1081:1080 \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    wgcf-docker
