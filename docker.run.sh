#!/bin/bash
docker run --init -d --restart=unless-stopped \
--env-file="$HOME/home-assistant-config/.env" \
--name="homeass" -v "$HOME/home-assistant-config:/config" \
--net=host \
--net=host homeassistant/aarch64-homeassistant:latest
