docker-compose down
docker rm $(docker ps -aqf name=local-developer-environment)
docker network rm $(docker network ls -q)
docker image prune