# Annuaire communes Postgres

Run `/bin/install` to setup everything (re-runable).

Check binaires in `/bin`, they should be launch from the root directory because relative directories are used.

To explore the data launch a Metabase. Some requests are in sql/requests.

## Manual data to retrieve

- population : https://statistiques-locales.insee.fr/#c=indicator&i=pop_legales.popmun&s=2021&t=A01&view=map1

## Requirements

Ruby is needed for some scripts

## Notes

to allow password connection to Postgres you must :
- add `local annuaire_communes annuaire_communes md5` to `/etc/postgresql/14/main/pg_hba.conf`

for Docker to see the local database you must :
- add the local IP to /etc/hosts of the Docker image (adding `--add-host=host.docker.internal:host-gateway`) ;
- add the Docker IP to Postgres `listen_adresses` in `/etc/postgresql/14/main/postgresql.conf` ;
- add the Docker IP to Postgres authorised IP `host all all <IP> md5` in `/etc/postgresql/14/main/pg_hba.conf`

## TODO

- surface ville
- surface centre ville
- surface aglomération
- nb habitant dans chaque zone ?
- ration taille de la ville nb habitant
- nb cinéma, gare, boulangerie, piscine
- hectare de forêt ?
- proximité avec la forêt ?
- hectare d'espace vert ?
- note "ville fleurie" ?
