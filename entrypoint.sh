#!/bin/sh

if [ -n "$PORT" ]; then
    sed -i "s/\"port\": 10000/\"port\": $PORT/g" /etc/xray/config.json
    echo "Port configure sur : $PORT"
else
    echo "Pas de variable PORT, port 10000 conserve"
fi

exec /usr/bin/xray -config=/etc/xray/config.json
