#!/usr/bin/env bash

TODAY=$(date '+%Y%m%d')
docker-compose exec influxdb influxd backup -portable /var/tmp/backups/${TODAY}
