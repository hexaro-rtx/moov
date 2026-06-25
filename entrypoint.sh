#!/bin/sh

# Railway donne un port aléatoire via la variable $PORT
# On remplace le placeholder 10000 par ce port
if [ -n "$PORT" ]; then
    sed -i "s/\"port\": 10000/\"port\": $PORT/g" /etc/xray/config.json
    echo "Port configuré sur : $PORT"
else
    echo "Aucune variable PORT trouvée, utilisation du port par défaut"
fi

# Lance Xray
/usr/bin/xray -config=/etc/xray/config.json
