# Slay The Spire Rails API

Images and gametext from Slay The Spire

Game data extracted using ModTheSpire, BaseMod, and STS Exporter

https://github.com/kiooeht/ModTheSpire

https://github.com/FlipskiZ/BaseMod

https://github.com/twanvl/sts-exporter

# Current API endpoints

/api/v1/cards

/api/v1/relics

/api/v1/keywords

# Using Docker-Compose

```bash
# see https://docs.docker.com/compose/rails/
docker-compose build
docker-compose run web rake db:create db:migrate db:seed
docker-compose up
```

```to reset the database
docker-compose run web rake db:reset
```
