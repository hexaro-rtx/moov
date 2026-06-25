# Utilise l'image officielle Xray légère
FROM teddysun/xray:latest

# Copie le script d'entrée
COPY entrypoint.sh /entrypoint.sh

# Copie le template de config
COPY config.json /etc/xray/config.json

# Rend le script exécutable
RUN chmod +x /entrypoint.sh

# Railway injecte automatiquement la variable PORT
# Le script remplacera le port dans la config
ENTRYPOINT ["/entrypoint.sh"]
