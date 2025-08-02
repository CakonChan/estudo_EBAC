---
id: comandos
title: Guia Rápido de Comandos Docker (pt-BR)
slug: /guia-rapido-de-comandos-docker-pt-br
sidebar_label: Guia Rápido de Comandos Docker (pt-BR)
tags:
- ci
- docker
- node
---

# Guia Rápido de Comandos Docker (pt-BR)

> Cole diretamente no seu Docusaurus. Todos os exemplos usam a CLI moderna (`docker` e `docker compose`).

## Como ler a sintaxe

* **`<>`** obrigatório · **`[]`** opcional · `...` repetição
* Muitos comandos aceitam `--help` para ver detalhes.

```bash
docker --help
docker <comando> --help
```

---

## Informações do sistema

* **`docker version`** — versão do cliente/servidor.
* **`docker info`** — resumo do ambiente Docker (drivers, redes, volumes, etc.).
* **`docker system df`** — uso de disco por imagens/containers/volumes.

```bash
docker version
docker info
docker system df
```

---

## Imagens

* **`docker pull <imagem[:tag]>`** — baixa uma imagem do registry (padrão: Docker Hub).
* **`docker images`** ou **`docker image ls`** — lista imagens locais.
* **`docker rmi <imagem>`** — remove imagem(s).
* **`docker tag <img-origem> <repo:tag>`** — cria nova tag para uma imagem.
* **`docker save -o <arquivo.tar> <imagem>`** — exporta imagem para arquivo.
* **`docker load -i <arquivo.tar>`** — importa imagem de arquivo.
* **`docker history <imagem>`** — camadas e comandos usados no build.
* **`docker search <nome>`** — busca no Docker Hub.

```bash
docker pull alpine:3.20
docker images
docker rmi alpine:3.20
```

---

## Containers – ciclo de vida

* **`docker run [opções] <imagem> [cmd] [args]`** — cria **e** inicia um container.

  * Flags comuns: `-d` (detached), `-it` (interativo), `--name`, `-p host:cont`, `-v host:cont`, `-e VAR=valor`, `--rm`.
* **`docker ps`** / **`docker ps -a`** — lista containers em execução / todos.
* **`docker stop <nome|id>`** — envia SIGTERM e depois SIGKILL se necessário.
* **`docker start <nome|id>`** — inicia container parado.
* **`docker restart <nome|id>`** — reinicia.
* **`docker rm <nome|id>`** — remove container parado (use `-f` para forçar).
* **`docker rename <old> <new>`** — renomeia.
* **`docker inspect <nome|id>`** — JSON detalhado (rede, mounts, env, etc.).
* **`docker update [opções] <nome|id>`** — altera recursos (CPU/memória).
* **`docker stats [nome|id...]`** — uso de CPU/memória/rede em tempo real.
* **`docker top <nome|id>`** — processos dentro do container.
* **`docker wait <nome|id>`** — bloqueia até o container terminar e retorna exit code.

```bash
docker run -d --name web -p 8080:80 nginx:alpine
```

---

## Execução e interação

* **`docker exec [opções] <nome|id> <cmd>`** — executa comando em container em execução.

  * Comum: `-it` para shell interativo.
* **`docker logs [opções] <nome|id>`** — mostra logs (`-f` segue em tempo real, `--since 10m`).
* **`docker attach <nome|id>`** — anexa ao processo principal do container.
* **`docker cp <origem> <destino>`** — copia arquivos entre host e container.
* **`docker port <nome|id>`** — mostra mapeamentos de porta.
* **`docker diff <nome|id>`** — mudanças no filesystem do container.

```bash
docker exec -it web sh
docker logs -f --since 10m web
docker cp web:/usr/share/nginx/html/index.html ./
```

---

## Rede (networks)

* **`docker network ls`** — lista redes.
* **`docker network inspect <rede>`** — detalhes e containers conectados.
* **`docker network create [--driver bridge|overlay] <nome>`** — cria rede.
* **`docker network connect <rede> <container>`** — conecta container.
* **`docker network disconnect <rede> <container>`** — desconecta.
* **`docker network rm <rede>`** — remove rede vazia.

```bash
docker network create -d bridge minha-rede
docker network connect minha-rede web
```

---

## Volumes (persistência)

* **`docker volume ls`** — lista volumes.
* **`docker volume create <nome>`** — cria volume.
* **`docker volume inspect <nome>`** — detalhes.
* **`docker volume rm <nome>`** — remove volume sem uso.
* **`docker volume prune`** — remove volumes *dangling* (sem containers).

```bash
docker volume create dados
docker run -d --name db -v dados:/var/lib/postgresql/data postgres:16
```

---

## Build de imagens

* **`docker build -t <repo:tag> <caminho>`** — cria imagem a partir de um `Dockerfile`.

  * Úteis: `--no-cache`, `--build-arg KEY=VAL`, `--platform linux/amd64`.
* **`docker builder prune`** — limpa cache de build.

```bash
docker build -t meuapp:1.0 .
```

> Para builds multi-plataforma, use **Buildx** (já incluso): `docker buildx build --platform linux/amd64,linux/arm64 -t repo/app:tag .`

---

## Registries

* **`docker login [registry]`** — autentica no registry.
* **`docker logout [registry]`** — encerra sessão.
* **`docker push <repo:tag>`** — envia imagem para o registry.
* **`docker pull <repo:tag>`** — baixa imagem do registry.

```bash
docker login
docker push meuusuario/meuapp:1.0
```

---

## Limpeza (housekeeping)

* **`docker system prune`** — remove tudo não utilizado (containers parados, redes *dangling*, imagens sem tag, cache). Use `-a` para incluir **todas** as imagens não usadas.
* **`docker image prune`**, **`docker container prune`**, **`docker volume prune`**, **`docker network prune`** — limpa seletivamente.

```bash
docker system prune -a
```

---

## Docker Compose (orquestração local)

> A CLI moderna é `docker compose` (sem hífen).

* **`docker compose up [opções]`** — sobe os serviços definidos em `compose.yml`.

  * Comum: `-d` (em background), `--build` (força build), `--pull always`.
* **`docker compose down`** — derruba serviços, redes e remove containers.
* **`docker compose ps`** — status dos serviços.
* **`docker compose logs [-f] [serviço]`** — logs agregados.
* **`docker compose exec <serviço> <cmd>`** — executa comando em um serviço.
* **`docker compose restart [serviço]`** — reinicia serviço(s).
* **`docker compose stop|start [serviço]`** — para/inicia.
* **`docker compose build [serviço]`** — build das imagens.
* **`docker compose pull|push`** — pull/push das imagens referenciadas.

```bash
docker compose up -d --build
docker compose logs -f api
```

---

## Resolução de problemas

* **`docker events`** — fluxo de eventos em tempo real (útil para debugar).
* **`docker inspect <obj>`** — verifique redes, mounts, IP, variáveis etc.
* **`docker logs -f <container>`** — acompanhe erros do app.
* **`docker system info`** / **`docker info`** — valide drivers e limites.

---

## Flags úteis (referência rápida)

* `-d` — detached (em background)
* `-p <host:cont>` — publica porta (ex.: `-p 8080:80`)
* `-P` — publica automaticamente portas expostas
* `-v <host:cont[:ro]>` — monta volume/bind (adicione `:ro` para somente leitura)
* `--mount type=bind,source=...,target=...` — alternativa mais explícita ao `-v`
* `-e KEY=VALUE` — define variável de ambiente
* `--name <nome>` — nomeia o container
* `--rm` — remove container ao encerrar
* `--restart=always|unless-stopped|on-failure` — política de reinício
* `--network <rede>` — conecta a rede específica
* `--platform linux/amd64|linux/arm64` — plataforma de execução
* `-it` — `-i` (stdin) + `-t` (TTY) para shell interativo

---

## Exemplos práticos

```bash
docker run -d --name api \
  -p 3000:3000 \
  -v $PWD:/app \
  -w /app \
  -e NODE_ENV=development \
  node:20 node server.js

docker volume create pgdata
docker run -d --name pg -p 5432:5432 \
  -e POSTGRES_PASSWORD=secret \
  -v pgdata:/var/lib/postgresql/data \
  postgres:16

docker compose up -d --build
docker compose ps
```

---

## Dicas para Windows/WSL

* Se o Docker pedir atualização do WSL: `wsl --update` (PowerShell como Admin) e reinicie.
* Reiniciar backend WSL rapidamente: `wsl --shutdown` e abrir o Docker novamente.

---
