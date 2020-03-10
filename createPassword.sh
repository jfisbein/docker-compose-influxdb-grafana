#!/usr/bin/env bash

USERNAME="${1}"
PASSWORD="${2}"
docker run --rm -ti xmartlabs/htpasswd "${USERNAME}" "${PASSWORD}" | sed -e s/\\$/\\$\\$/g
