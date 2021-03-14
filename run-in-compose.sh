service=$1
project=${2:-"run-in-compose"}
compose_file=${3:-"docker-compose.yml"}
docker-compose pull -q
docker-compose -f "$compose_file" -p "$project" up -d --no-build
container_to_wait="$project"_"$service"_1
echo "waiting for container $container_to_wait"
exit $(docker wait "$container_to_wait")