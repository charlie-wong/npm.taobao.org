#!/bin/bash

# https://zhangge.net/4152.html

LOGS_PATH=/var/log/nginx
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)

mv ${LOGS_PATH}/access.log ${LOGS_PATH}/access.log.${YESTERDAY}
mv ${LOGS_PATH}/error.log ${LOGS_PATH}/error.log.${YESTERDAY}
mv ${LOGS_PATH}/registry.access.log ${LOGS_PATH}/registry.access.log.${YESTERDAY}
mv ${LOGS_PATH}/web.access.log ${LOGS_PATH}/web.access.log.${YESTERDAY}

kill -USR1 `ps axu | grep "nginx: master process" | grep -v grep | awk '{print $2}'`

cd ${LOGS_PATH}
find . -mtime +2 -name "*20[1-9][3-9]*" | xargs rm -f

exit 0

# 0 0 * * * /your-home/git/npm.taobao.org/cut_del_logs.sh
