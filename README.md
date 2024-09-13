# Installation de Docker

## Prérequis

Avant de commencer, assurez-vous d'avoir les prérequis suivants :

- Système d'exploitation : Linux, macOS ou Windows.
- Accès administrateur (pour l'installation).

## Étapes d'installation

### 1. Installer Docker sur Linux

#### a) Mettre à jour les paquets
```bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

#### b) Ajouter la clé GPG de Docker
```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

#### c) Ajouter le dépôt Docker APT
```bash
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

#### d) Installer Docker
```bash
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
```

#### e) Vérifier l'installation
Pour vérifier si Docker est correctement installé, exécutez la commande suivante :
```bash
sudo docker --version
```

#### f) Ajouter votre utilisateur au groupe Docker
Cela permet de ne pas utiliser `sudo` à chaque fois que vous exécutez des commandes Docker.
```bash
sudo usermod -aG docker ${USER}
```
Déconnectez-vous et reconnectez-vous pour appliquer cette modification.

### 2. Installer Docker sur macOS

1. Téléchargez **Docker Desktop pour Mac** depuis le site officiel [Docker](https://www.docker.com/products/docker-desktop).
2. Ouvrez le fichier téléchargé et suivez les instructions à l'écran pour installer Docker.
3. Après l'installation, ouvrez Docker depuis le dossier "Applications".

### 3. Installer Docker sur Windows

1. Téléchargez **Docker Desktop pour Windows** depuis le site officiel [Docker](https://www.docker.com/products/docker-desktop).
2. Lancez le fichier d'installation téléchargé et suivez les étapes d'installation.
3. Docker nécessite l'activation de **WSL 2** (Windows Subsystem for Linux). Activez WSL 2 lors de l'installation si cela est demandé.
4. Une fois installé, lancez Docker Desktop depuis le menu Démarrer.

## Utilisation de Docker

### Lancer un conteneur simple
Pour tester l'installation, exécutez la commande suivante qui lancera un conteneur basé sur l'image `hello-world` :
```bash
docker run hello-world
```

Si tout est correctement configuré, vous verrez un message de confirmation indiquant que Docker fonctionne.

### Commandes Docker courantes

- **Lister les conteneurs** :
  ```bash
  docker ps
  ```

- **Télécharger une image** :
  ```bash
  docker pull <nom_image>
  ```

- **Exécuter un conteneur** :
  ```bash
  docker run <nom_image>
  ```

- **Arrêter un conteneur** :
  ```bash
  docker stop <id_du_conteneur>
  ```

## Documentation supplémentaire

Pour plus de détails sur l'utilisation de Docker, veuillez consulter la [documentation officielle de Docker](https://docs.docker.com/).
