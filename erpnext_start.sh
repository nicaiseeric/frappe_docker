#!/bin/bash

echo "starting frappe-erpnext docker stack..."
docker-compose -f compose.yaml \
 -f overrides/compose.mariadb.yaml \
 -f overrides/compose.redis.yaml \
 -f overrides/compose.proxy.yaml \
 -f overrides/compose.erpnext.yaml \
 up -d

echo "showing logs ... press CRTL+C to exit."
docker-compose -f compose.yaml \
 -f overrides/compose.mariadb.yaml \
 -f overrides/compose.redis.yaml \
 -f overrides/compose.proxy.yaml \
 -f overrides/compose.erpnext.yaml \
 logs -f

