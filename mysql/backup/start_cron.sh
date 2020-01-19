#!/bin/bash
echo "start backup"
docker exec -i blog-mysql /docker-entrypoint-initdb.d/backup.sh
echo "backup success"
