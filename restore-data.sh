#!/usr/bin/env bash

set -e
set +o pipefail

unzip -oq "db/db.zip" && \
python manage.py loaddata db.json && \
rm -rf db.json && \
rm "db/db.zip" && \
echo "Restore finished"
