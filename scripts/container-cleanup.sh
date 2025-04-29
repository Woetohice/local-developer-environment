  # Stop the containers
  docker-compose \
        --file "docker-compose.yml" \
        --env-file "docker-compose.env" \
      down \
        --remove-orphans \
        --volumes

  # Remove the containers
  docker-compose \
        --file "docker-compose.yml" \
        --env-file "docker-compose.env" \
      rm \
        --all \
        --stop \
        --force \
        --volumes