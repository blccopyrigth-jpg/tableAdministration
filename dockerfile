# Image de base
FROM node:20-alpine

# Répertoire de travail
WORKDIR /app

# Copie des fichiers de configuration
COPY package*.json ./

# Installation des dépendances
RUN npm install

# Copie du code source
COPY . .

# Port d'écoute
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]
