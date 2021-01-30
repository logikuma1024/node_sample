# 基本操作
up:
	docker-compose up
down:
	docker-compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes --remove-orphans
stop:
	docker-compose stop
build:
	docker-compose build --no-cache --force-rm
build-app:
	docker-compose build --no-cache --force-rm app
	@make up
build-db:
	docker-compose build --no-cache --force-rm mysql
	@make up
ps:
	docker-compose ps
logs:
	docker-compose logs

# ログ回り
log-app:
	docker-compose logs app
log-app-watch:
	docker-compose logs --follow app
log-db:
	docker-compose logs mysql
log-db-watch:
	docker-compose logs --follow mysql

# コンテナへの接続
app:
	docker-compose exec app bash
db:
	docker-compose exec mysql bash
run-app:
	docker-compose run --rm app /bin/bash
run-db:
	docker-compose run --rm mysql /bin/bash