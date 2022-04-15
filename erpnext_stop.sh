#!/bin/bash

echo "stopping frappe-erpnext docker stack..."
docker-compose -f compose.yaml \
 -f overrides/compose.mariadb.yaml \
 -f overrides/compose.redis.yaml \
 -f overrides/compose.proxy.yaml \
 -f overrides/compose.erpnext.yaml \
 down

