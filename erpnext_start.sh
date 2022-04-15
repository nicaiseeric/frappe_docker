#!/bin/bash

echo "starting frappe-erpnext docker stack..."
# Point to main compose file (compose.yaml) and add one more.
docker-compose -f compose.yaml \
 -f overrides/compose.mariadb.yaml \
 -f overrides/compose.redis.yaml \
 -f overrides/compose.proxy.yaml \
 -f overrides/compose.erpnext.yaml \
 config
