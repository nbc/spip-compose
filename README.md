Ce dépôt permet de démarrer très rapidement un *environnement de
développement* pour spip 3.2 avec une base mariadb 10.5.

# Démarrage rapide

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

# configurer l'environnement

Par défaut l'environnement est disponible sur l'url
http://localhost:8080. Le login administrateur est `admin` et le mot
de passe `adminadmin`.

Si vous comptez ouvrir cet environnement sur internet, copiez le
fichier `.env.example` vers `.env` et modifiez au moins la variable :
* `SPIP_ADMIN_PASS`

# utiliser l'environnement

* SPIP est disponible sur localhost:8080
* phpmyadmin sur localhost:8090

# Références

Il est basé sur les images :
* https://hub.docker.com/_/mariadb
* https://hub.docker.com/r/ipeos/spip/
