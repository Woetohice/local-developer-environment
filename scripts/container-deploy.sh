#!/bin/bash
    docker-compose \
      --file "docker-compose.yml" \
      --env-file "docker-compose.env" \
      up -d --build