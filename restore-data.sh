#!/usr/bin/env bash

set -e
set +o pipefail

if [ ! -z "$1" ]; then
    unzip -oq "db/$1"

    python manage.py loaddata db.json

    rm -rf db.json

    rm "db/$1"

    echo "Restore finished"
else
    echo "Please define a filename"
fi