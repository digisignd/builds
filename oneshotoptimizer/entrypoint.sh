#!/bin/sh
/opt/bit4id/imgconverter/bin/imgconverter 2>&1 &
/opt/bit4id/oneshot_optimizer/bin/python -m oneshot_optimizer.wsgi 2>&1 &
exec "$@"
