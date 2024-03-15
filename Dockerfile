# Choisir une image de base et la version
FROM node:18-alpine

# Création du repertoire /app - = mkdir + cd - Donc on navigue dans le dossier.
WORKDIR /app

# On copy tout ce qui se trouve dans notre répertoire courant local, 
# version le répertoire /app que l'on vient de créer
COPY . .

# On utilise yarn pour packager l'application Node en se basant sur le descripteur package.json
RUN yarn install --production

# On dit à l'image quelle commande doit être exécutée au démarrage d'un conteneur
CMD ["node", "src/index.js"]

# On expose le port 3000 pour binder dessus
EXPOSE 3000