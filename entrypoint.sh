#!/bin/bash
set -x

CRON_TIME=${CRON_TIME:-"1 * * * *"}

echo "$CRON_TIME /bin/wrapper-docker-gc" > /var/spool/cron/crontabs/root

crond -l 2 -f