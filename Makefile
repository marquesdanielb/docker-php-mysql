# Iniciar Contêineres
up:
	docker compose up -d

# Parar e Remover os Contêineres
down:
	docker compose down

# Reiniciar Contêineres
restart:
	docker compose down && docker compose up -d

# Parar Contêineres
stop:
	docker compose stop

# Iniciar Contêineres (após parar)
start:
	docker compose start

# Acessar Console php
php-console:
	docker exec -it php-container /bin/bash

# Acessar Console MySQL
mysql-console:
	docker exec -it mysql-container /bin/sh

# Faz o build da imagem e sobe o container em segundo plano
build:
	docker compose up -d --build

# Remove os containeres orfãos
remove:
	docker compose down --remove-orphans