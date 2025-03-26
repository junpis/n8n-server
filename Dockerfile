# Usa la imagen oficial de n8n
FROM n8nio/n8n

# Establece el directorio de trabajo
WORKDIR /data

# Habilita autenticación básica (modifica los valores si quieres más seguridad)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

# Configura la base de datos SQLite para persistencia de datos
ENV DB_TYPE=sqlite
ENV DB_SQLITE_DATABASE=/data/database.sqlite

# Expone el puerto en el que corre n8n
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n"]
