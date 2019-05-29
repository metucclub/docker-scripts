#!/usr/bin/env bash

set -e
set +o pipefail

timestamp=$(date +%s)

filename="db_$timestamp.zip"

python manage.py dumpdata -e contenttypes -e auth.Permission  -e admin.LogEntry -e sessions > db.json

zip -qr "db/$filename" media db.json

rm -rf db.json

echo "$filename"