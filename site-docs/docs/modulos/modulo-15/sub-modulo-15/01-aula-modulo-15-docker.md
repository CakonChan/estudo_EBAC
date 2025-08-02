---
id: aula
title: Aula - Módulo 15 - Docker
slug: /aula-modulo-15-docker
sidebar_label: Aula - Módulo 15 - Docker
tags:
- ci
- docker
- git
---

# Aula - Módulo 15 - Docker

comandos que aprendemos:

docker image ls

wsl --update

docker pull alpine

usuario
passowrd -> token acesso

docker image ls

docker ps

docker container ps

docker run -it -name alpine-test -valor de IMAGE ID- (fica no docker image ls)

aparece-> / #

entao escrevemos apk add curl e exit

docker search wordpress

docker pull wordpress

docker image ls

docker run -p 1234:80 wordpress

enquanto rodando, nova aba git bash

quando voce quer parar, use docker stop na nova aba git bash

e escreve docker ps e veja se tem o vaslor Container ID pra cancelar e tem que ser os dois primeiros digitos


proximo assunto:

https://labs.play-with-docker.com/

Start -> Add new instance

entao no terminal, vejamos docker image ls

e vamos baixar docker pull nginx

entao

docker run -p 2020:80 -d nginx

abre 2020 entao vera nginx welcome

e gitbash
docker image ls 

docker image rm valor -f é pra remover

docker pull valor é pra adicionar
