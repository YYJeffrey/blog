# blog
Solo blog with docker-compose.

## How to run?
```shell
cd blog
docker-compose up -d
```

## Crontab Script
```shell
crontab -e
28 2 * * * sh /root/blog/mysql/backup/start_cron.sh 2>&1
systemctl restart crond.service
```
