docker kill docker-proxy
docker rm docker-proxy
docker run -d --name docker-proxy --privileged -v /var/run/docker.sock:/var/run/docker.sock --add-host=host.docker.internal:host-gateway -p 127.0.0.1:8978:2375 -e VALID_PPUS_SWARM_TOKEN_VALUE=ValidToken -e PING=1 -e IMAGES=1 docker-ha-proxy:latest
