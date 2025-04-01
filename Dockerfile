FROM n8nio/n8n:1.37.1

# Autenticación básica
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Seguridad del archivo de configuración
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Config del server
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# Exponer puerto
EXPOSE 5678

# Usar volumen para persistir datos
VOLUME /home/node/.n8n

# Comando de arranque
CMD ["n8n"]
