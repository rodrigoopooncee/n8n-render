FROM n8nio/n8n:1.37.1

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_CONNECTION_URL=${DB_POSTGRESDB_CONNECTION_URL}
ENV DB_TABLE_PREFIX=n8n_

EXPOSE 5678

CMD ["node", "./packages/cli/bin/n8n"]

