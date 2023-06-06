#!/usr/bin/env bash

mkdir -p -m 750 ./data
chown -R 1000:1000 ./data

docker-compose up -d;
sleep 45s;