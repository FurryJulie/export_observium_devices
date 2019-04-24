#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SQL_SCRIPT = $DIR + "export_observium_devices.sql"
NOW = `date -u +%s`
TMP_EXPORT = "/tmp/" + $NOW + "_export_observium_devices.txt"

/usr/bin/mysql -uroot -p < $SQL_SCRIPT > $TMP_EXPORT
