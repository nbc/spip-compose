Ce dépôt permet de démarrer très rapidement un *environnement de
développement* pour spip 3.2 avec une base mariadb 10.5.

# Démarrage rapide en mode développement local

Les commandes de bases :

Copiez le fichier .env.example vers .env :
```
cp .env.example .env
```
Et configurez le

## Démarrer l'environnement :
```
docker-compose up -d
```

## Arrêter l'environnement

```
docker-compose down
```

## Supprimer la base de données
```
docker volume rm spip-compose_mariadb
```

## utiliser l'environnement

* SPIP est disponible sur localhost:8080
* phpmyadmin sur localhost:8090

# Utilisation d'un environnement de "production"

Pour utiliser cet environnement vous devez avoir un container traefik
actif. Vous pouvez utiliser https://github.com/nbc/traefik-compose qui
préconfigure le strict nécessaire.

Copiez le fichier .env.example vers .env et configurer le.

## démarrer

```
docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml up -d
```

## arrêter

```
docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml up -d
```

# configurer l'environnement

Par défaut l'environnement est disponible sur l'url
http://localhost:8080. Le login administrateur est `admin` et le mot
de passe `adminadmin`.

Si vous comptez ouvrir cet environnement sur internet, copiez le
fichier `.env.example` vers `.env` et modifiez au moins la variable :
* `SPIP_ADMIN_PASS`


# Références

Il est basé sur les images :
* https://hub.docker.com/_/mariadb
* https://hub.docker.com/r/ipeos/spip/
