#!/usr/bin/env bash

EXPECTED_ARGS=2
if [ $# -ne ${EXPECTED_ARGS} ]; then
  echo "Script to create credentials for Traefik basicauth"
  echo ""
  echo "Usage: $(basename "${0}") {username} {password}"
  exit 1
fi

USERNAME="${1}"
PASSWORD="${2}"
docker pull xmartlabs/htpasswd > /dev/null
docker run --rm -ti xmartlabs/htpasswd "${USERNAME}" "${PASSWORD}" | sed -e s/\\$/\\$\\$/g
