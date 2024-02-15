service=$1
project=${2:-"run-in-compose"}
compose_file=${3:-"docker-compose.yml"}
env_vars=${4:-"{}"}

echo "$env_vars" | jq -r 'to_entries|map("\(.key)=\(.value|tostring)")|.[]' | while read var; do export "$var"; done

docker compose --file "$compose_file" pull -q
docker compose --file "$compose_file" -p "$project" run $service
exit $?
