#!/bin/bash

CRON_TIME=${CRON_TIME:-"1 * * * *"}

echo "$CRON_TIME /bin/wrapper-docker-gc" > /var/spool/cron/crontabs/root

exec "$@"