export BIT4LICENSE=digisign
/opt/bit4id/connector/bin/connector --appmodule connector.app --enable-deferred --port 8081 2>&1
exec "$@"
