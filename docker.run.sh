#!/bin/bash
docker run --init -d --restart=unless-stopped \
--env-file=~/home-assistant-config/.env \
--name="homeass" -v ~/home-assistant-config:/config \
--net=host homeassistant/aarch64-homeassistant:latest
