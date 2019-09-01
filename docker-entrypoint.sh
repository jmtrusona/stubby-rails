#!/bin/bash
set -e

source /usr/local/bin/docker-functions.source

REGION=${REGION:-us-west-2}
SERVICE=Bonjour

# if password isn't set then grab from secrets manager
if [ "${DB_PASS}x" = "x" ]; then
    fetch_db_secrets
fi

export DATABASE_URL="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}"

exec $@