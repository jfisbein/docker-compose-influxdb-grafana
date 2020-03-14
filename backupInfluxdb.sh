#!/usr/bin/env bash

YESTERDAY=$(date -d 'yesterday 13:00' '+%Y%m%d')
docker-compose exec influxdb influxd backup -portable /var/tmp/backups/${YESTERDAY}
