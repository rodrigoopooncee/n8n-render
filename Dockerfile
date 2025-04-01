FROM node:18-alpine

# Crear carpeta de trabajo
WORKDIR /app

# Instalar dependencias de sistema
RUN apk add --no-cache python3 make g++ curl bash

# Instalar n8n globalmente
RUN npm install -g n8n

# Exponer puerto
EXPOSE 5678

# Variables de entorno
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_URL=${DB_POSTGRESDB_CONNECTION_URL}
ENV DB_TABLE_PREFIX=n8n_
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Comando para ejecutar n8n
CMD ["n8n"]





