service=$1
project=${2:-"run-in-compose"}
compose_file=${3:-"docker-compose.yml"}
docker compose --file "$compose_file" pull -q
docker compose --file "$compose_file" -p "$project" run --rm $service
exit $?
