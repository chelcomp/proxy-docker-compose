docker compose down
docker compose pull --ignore-pull-failures  --include-deps
#docker compose pull
docker compose build
docker compose up -d --force-recreate
docker compose logs -f
