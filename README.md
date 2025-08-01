# Dockerized Web-Server Framework

A modular framework: **Nginx** ↔ interchangeable **Ruby**, **Python**, or **Meteor** apps.

## Quickstart

```bash
git clone git@github.com:a-atanda/webserver-framework.git
cd webserver-framework

export APP_TYPE=python-app   # choose: ruby-app | python-app | meteor-app

docker compose build
docker compose up -d

open http://localhost:8080
```

## Structure

```
nginx/           # Nginx reverse-proxy
apps/            # ruby-app, python-app, meteor-app
docker-compose.yml
Makefile
.github/          # CI workflows
README.md
.gitignore
```

## Switching Apps

```bash
export APP_TYPE=meteor-app
docker compose up -d --build
```

## License

MIT © 2025 a-atanda
