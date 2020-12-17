#!/bin/sh

set -e

for i in `seq 1 4`; do
    /opt/bit4id/de/bin/de.exe api $i >/dev/null 2>&1 &
    RETVAL=$?
    [ $RETVAL -eq 0 ]
done

for i in `seq 1 4`; do
    /opt/bit4id/de/bin/de.exe cryptosvc $i >/dev/null 2>&1 &
    RETVAL=$?
    [ $RETVAL -eq 0 ]
done

exec "$@"
