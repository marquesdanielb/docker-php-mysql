# Ambiente de Desenvolvimento com Docker
Este repositório fornece um ambiente de desenvolvimento php simples e fácil de manipular e administrar usando Docker. Ele inclui um serviço Apache com php 8.0, um serviço MySQL e um serviço Adminer para gerenciar o banco de dados. Abaixo estão os detalhes e instruções para começar.

| Pré-requisitos: :rotating_light:                                               | 
| ------------------------------------------------------------------------------ | 
| Certifique-se de ter o *Docker* e o *Docker Compose* instalados em seu sistema.| 

## Instrução de Uso

### 1. Clone o repositório:

```
git clone https://github.com/marquesdanielb/docker-php.git
```

### 2. Construa e Inicie os Contêineres:
Primeiro iremos entrar no repositório que acabamos de clonar. O comando abaixo fará com que você entre no diretório *docker-php*
```
cd docker-php
```

O comando abaixo criará e iniciará os contêineres definidos no docker-compose.yml.
```
make up
```

### 3. Acesse o php Info:
Abra o navegador e acesse http://localhost:9000. Você deve ver as informações sobre o php.

## Instruções de acesso ao Banco de Dados:

Adminer: http://localhost:9001
Sistema: MySQL
Servidor: mysql_db (*o servidor é o mesmo nome do serviço docker. Por isso mysql_db*)
Usuário: root
Senha: root (*lembre-se de proteger sua senha caso use esse respositório como portfólio ou algo assim*)

## Instruções de Uso do Makefile
O arquivo Makefile automatiza operações do Docker com comandos como *make up* para iniciar contêineres e *make down* para parar e remover contêineres. Facilita a gestão do ambiente de desenvolvimento.

- Iniciar Contêineres:
```
make up
```

- Parar e Remover os Contêineres:
```
make down
```

- Reiniciar Contêineres:
```
make restart
```

- Parar Contêineres:
```
make stop
```

- Iniciar Contêineres (após parar):
```
make start
```

- Acessar Terminal php:
```
make php-console
```

- Acessar Terminal MySQL:
```
make mysql-console
```

- Reconstruir Contêineres:
```
make build
```

## Estrutura do Projeto

### Diretório ./src:
Aqui você pode colocar o seu código php e começar a desenvolver. Sinta-se à vontade para ajustar as configurações conforme necessário para o seu projeto específico. Este ambiente serve como um ponto de partida fácil para projetos php com Docker. :space_invader:
