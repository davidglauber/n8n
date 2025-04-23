# Use a imagem oficial do n8n
FROM n8nio/base:20

# Troque para root para instalar módulos
USER root

# Instala o node de comunidade dentro do n8n
RUN mkdir -p /home/node/.n8n/nodes \
    && cd /home/node/.n8n/nodes \
    && npm install n8n-nodes-evolution-api

# Retorne ao usuário padrão por segurança
USER node
