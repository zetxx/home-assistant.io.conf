#!/bin/bash
docker run --init -d --restart=unless-stopped \
-e token_pu_1=$TOKEN \
--name="homeass" -v /home/zetxx/home-assistant-config:/config \
--net=host homeassistant/aarch64-homeassistant:latest

