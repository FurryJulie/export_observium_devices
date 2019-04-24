#!/bin/bash

#set -eux

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SQL_SCRIPT="${DIR}export_observium_devices.sql"
EXPORT="${DIR}/export_observium_devices.csv"


OUTPUT=$(/usr/bin/mysql -uroot -p < $SQL_SCRIPT)
echo $(sed -i "s/	/,/g" "$OUTPUT") > $EXPORT
