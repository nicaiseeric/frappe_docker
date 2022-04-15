#!/bin/bash

source .env
export FRAPPE_SITE_ADMIN_PASSWORD="n31d5.fr"
echo "creating frappe-erpnext site FRAPPE_SITE_NAME_HEADER=${FRAPPE_SITE_NAME_HEADER} ..."
docker-compose exec backend bench new-site "${FRAPPE_SITE_NAME_HEADER}" --install-app erpnext \
 --admin-password "${FRAPPE_SITE_ADMIN_PASSWORD}" --mariadb-root-password "${DB_PASSWORD}"

