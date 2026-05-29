deploy:
    @docker run -d --name appflask -p 7000:5000 ghcr.io/davidpaul10/holaflask

deploy: 
     @ docker stack deploy --with-registry-auth -c stack.yml david 
network:
     @ docker network create --driver overlay --scope swarn byron_net || true 
volume:
     @ docker valume create v_david 