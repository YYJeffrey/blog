#!/bin/bash
backup_dir="/backup"
password="setapassword"

if [ ! -d $backup_dir ]; then
    mkdir -p $backup_dir
fi

mysqldump --defaults-extra-file=/etc/mysql/my.cnf -uroot -p"$password" --databases solo > $backup_dir/data_$(date +%Y%m%d).sql
rm -f $backup_dir/data_$(date -d -7day +%Y%m%d).sql
