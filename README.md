Ce dépôt permet de démarrer très rapidement un *environnement de
développement* pour spip 3.2 avec une base mariadb 10.5.

# Démarrage rapide en mode développement local

Les commandes de bases :

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

# Démarrage d'un environnement en production



```
docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml down
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
