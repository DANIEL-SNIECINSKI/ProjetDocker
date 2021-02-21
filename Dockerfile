FROM debian:9

# Commande RUN utilisé uniquement lors de la creation du container
RUN apt-get update && apt-get install -y nginx telnet elinks openssh-server
 
# On va copier ou télécharger des fichiers dans l'image
ADD . /app/ 

# Permet de modifier le répertoire courant
WORKDIR /app

# PORT 80 Ouvert
EXPOSE  80

# On expose le port SSH pour pouvoir se connecter sur la machine
EXPOSE 22

# On indique quel répertoire on veut partager avec notre host
VOLUME /app/logs

# Commande permettant à notre conteneur de savoir quelle commande il doit exécuter lors de son démarrage
CMD nginx run start