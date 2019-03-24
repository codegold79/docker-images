#!/bin/bash

set -e

echo "Job started: $(date), host: $DATABASE_HOST, name: $DATABSE_NAME, user: $DATABASE_USER"

DATE=$(date +%Y%m%d_%H%M%S)
FILE="$DATE.sql"
echo $DATABASE_PASSWORD > ~/.pgpass
chmod 0600 ~/.pgpass
pg_dump -h "$DATABASE_HOST" -p 5432 -U "$DATABASE_USER" -f "$FILE" -d "$DATABASE_NAME" 
gzip "$FILE"

gsutil cp $FILE gs://$FILE

echo "Job finished: $(date)"